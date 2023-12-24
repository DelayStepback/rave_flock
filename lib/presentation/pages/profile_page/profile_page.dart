import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_state.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';

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

  int getOnlyAcceptedRaves(List<MeetEntity> meets){
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
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: GestureDetector(onTap: () => context.pop(), child: Icon(Icons.arrow_back_ios)),
        ),
        body: SafeArea(
          child: BlocBuilder<UserDataBloc, UserDataState>(
            builder: (context, state) {
              return state.when(
                init: () {
                  return const CircularProgressIndicator(); // TODO: изменить на реальный скрин
                },
                loaded: (userModel) {
                  return Column(
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
                      Text(userModel.username.toString(), style: TextStyle(fontSize: 30.sp)),
                      if (userModel.fullName != null) Text(userModel.fullName.toString(), style: TextStyle(fontSize: 24.sp),),
                      if (userModel.profileDescription != null) Text(userModel.profileDescription.toString()),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                width: 66.w,
                                height: 51.h,
                                decoration: ShapeDecoration(
                                  color: Color(0x1EB71B1B),
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
                              Text('FRIENDS')
                            ],
                          ),
                          SizedBox(
                            width: 190.w,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 66.w,
                                height: 51.h,
                                decoration: ShapeDecoration(
                                  color: Color(0x1EB71B1B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                                child: Center(child: BlocBuilder<MeetDataBloc, MeetDataState>(
                                  builder: (context, state) {
                                    return state.when(
                                        init: () => Text('##'),
                                        loaded: (loaded) => Text(getOnlyAcceptedRaves(loaded).toString()),
                                        error: (error) => Text('##'));
                                  },
                                )),
                              ),
                              Text('RAVES')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                       GestureDetector(
                        onTap: () {
                          AuthService.signOut();
                          context.go('/');
                        },
                        child: Container(
                          width: 241.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: Color(0x1EB71B1B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: const Center(child: Text('LogOut')),
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
