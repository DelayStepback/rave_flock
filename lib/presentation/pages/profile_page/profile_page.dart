import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_state.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_event.dart';
import 'package:rave_flock/presentation/dialogs/are_you_sure_dialog.dart';
import 'package:rave_flock/presentation/pages/profile_page/widgets/language_changing_button.dart';
import 'package:rave_flock/presentation/pages/profile_page/widgets/region_switcher.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/loading_screen/loading_screen.dart';

import '../../../services/auth_service.dart';
import '../../bloc/user_data_bloc/user_data_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: GetIt.I<FriendsDataBloc>(),
        ),
        BlocProvider.value(
          value: GetIt.I<UserDataBloc>(),
        ),
        BlocProvider.value(
          value: GetIt.I<MeetDataBloc>(),
        ),
      ],
      child: const _ProfilePageView(),
    );
  }
}

class _ProfilePageView extends StatelessWidget {
  const _ProfilePageView({super.key});

  int getOnlyAcceptedRaves(List<MeetEntity> meets) {
    final _meets = [];
    for (var meet in meets) {
      final myGuest = meet.usersGuests?.firstWhere((element) => element.userId == AuthService.getUserId());
      if (myGuest != null) {
        if (myGuest.status == GuestChooseAtMeetEnum.accepted.name) {
          _meets.add(meet);
        }
      }
    }
    return _meets.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [const Color(0xFF5B1828), Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: BlocBuilder<UserDataBloc, UserDataState>(
            builder: (context, state) {
              return state.when(
                init: () {
                  return const LoadingScreen();
                },
                loaded: (userModel) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      userModel.avatarUrl != null
                          ? CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(userModel.avatarUrl!),
                              radius: 130.r,
                            )
                          : SvgPicture.asset(
                              'assets/images/star_flock.svg',
                              width: 160.w,
                            ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(context.S.no_comment),
                      const LanguageChangingButton(),
                      RegionSwitcher(
                        regionName: userModel.location ?? context.S.no_location,
                        changeRegionCallback: (city) {
                          GetIt.I<UserDataBloc>().add(UserDataEvent.updateUserField(
                            UserFieldsEnum.location,
                            '${city.name}, ${city.country}',
                          ));
                        },
                      ),
                      Text(userModel.username.toString(), style: TextStyle(fontSize: 30.sp)),
                      if (userModel.fullName != null)
                        Text(
                          userModel.fullName.toString(),
                          style: TextStyle(fontSize: 24.sp),
                        ),
                      if (userModel.profileDescription != null) Text(userModel.profileDescription.toString()),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => context.goNamed('friendsPage'),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x1EB71B1B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                  ),
                                  child: Center(child: BlocBuilder<FriendsDataBloc, FriendsDataState>(
                                    builder: (context, state) {
                                      return state.when(
                                          init: () => Text('##'),
                                          loaded: (loaded) => Text(loaded.length.toString()),
                                          error: (error) => Text('##'));
                                    },
                                  )),
                                ),
                                Text(context.S.friends)
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          GestureDetector(
                            onTap: () => context.goNamed('homePage'),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x1EB71B1B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                  ),
                                  child: Center(child: BlocBuilder<MeetDataBloc, MeetDataState>(
                                    builder: (context, state) {
                                      return state.when(
                                          init: () => const Text('##'),
                                          loaded: (loaded) => Text(getOnlyAcceptedRaves(loaded).toString()),
                                          error: (error) => const Text('##'));
                                    },
                                  )),
                                ),
                                Text(context.S.raves)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AreYouSureDialog(
                                onConfirm: () => {
                                  AuthService.signOut(),
                                  context.go('/'),
                                },
                                textContent: context.S.are_you_sure_log_out,
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 241,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0x1EB71B1B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: Center(child: Text(context.S.logout)),
                        ),
                      ),
                    ],
                  );
                },
                error: (e) => ErrorScreen(error: e),
              );
            },
          ),
        ),
      ),
    );
  }
}
