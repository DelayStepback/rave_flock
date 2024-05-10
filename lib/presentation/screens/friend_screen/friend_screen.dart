import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/dialogs/are_you_sure_dialog.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/meet_roll_widget.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/loading_screen/loading_screen.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../../data/models/user/user_model.dart';
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key, required this.friendId});

  final String friendId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<FriendsDataBloc>(),
      child: _FriendScreen(
        friendId: friendId,
      ),
    );
  }
}

class _FriendScreen extends StatelessWidget {
  const _FriendScreen({super.key, required this.friendId});

  final String friendId;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [const Color(0xFF5B1828), Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
        body: SafeArea(
          child: BlocBuilder<FriendsDataBloc, FriendsDataState>(
            builder: (context, state) {
              return state.when(
                init: () {
                  return const LoadingScreen();
                },
                loaded: (friends) {
                  UserModel friendUserModel = friends.firstWhere((element) => element.userId == friendId);
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          friendUserModel.avatarUrl != null
                              ? CircleAvatar(
                                  backgroundImage: NetworkImage(friendUserModel.avatarUrl!),
                                  radius: 130.r,
                                )
                              : SvgPicture.asset(
                                  'assets/images/star_flock.svg',
                                  width: 160.w,
                                ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(friendUserModel.username.toString(), style: TextStyle(fontSize: 30.sp)),

                          if (friendUserModel.fullName != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                friendUserModel.fullName.toString(),
                                style: TextStyle(fontSize: 24.sp),
                              ),
                            ),
                          if (friendUserModel.profileDescription != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(friendUserModel.profileDescription.toString()),
                            ),
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
                                      color: const Color(0x1EB71B1B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                    ),
                                    child: const Center(child: Text('##')),
                                  ),
                                  Text(context.S.friends)
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
                                      color: const Color(0x1EB71B1B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                    ),
                                    child: const Center(child: Text('##')),
                                  ),
                                  Text(context.S.raves)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 28.h,
                          ),

                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return SafeArea(
                                      child: BlocProvider.value(
                                          value: GetIt.I<MeetDataBloc>(),
                                          child: _ModalBottomSelectMeet(friendID: friendId)));
                                },
                              );
                            },
                            child: Container(
                              width: 241.w,
                              height: 40.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x1EB71B1B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: Center(child: Text(context.S.invite_to_rave)),
                            ),
                          ),
                          SizedBox(
                            height: 28.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AreYouSureDialog(
                                    onConfirm: () => {
                                      context.goNamed('friendsPage'),
                                      GetIt.I<FriendsDataBloc>()
                                          .add(FriendsDataEvent.removeFriend(AuthService.getUserId() ?? '', friendId))
                                    },
                                    textContent: '${context.S.are_you_sure_delete} ${friendUserModel.username}?',
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: 241.w,
                              height: 40.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x1EB71B1B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: Center(child: Text(context.S.delete)),
                            ),
                          ),
                          SizedBox(
                            height: 28.h,
                          ),
                        ],
                      ),
                    ),
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

class _ModalBottomSelectMeet extends StatelessWidget {
  const _ModalBottomSelectMeet({super.key, required this.friendID});
  final String friendID;
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Center(child: BlocBuilder<MeetDataBloc, MeetDataState>(builder: (context, state) {
        return state.when(
          init: () {
            BlocProvider.of<MeetDataBloc>(context).add(MeetDataEvent.initialize(AuthService.getUserId() ?? ''));
            return const LoadingScreen();
          },
          loaded: (List<MeetEntity> allMeetData) {
            return MeetRollWidget(
              friendID: friendID,
              meetsEntities: allMeetData,
              meetRollWidgetEnum: MeetRollWidgetEnum.createdByUser,
              isInvitingButton: true,
            );
          },
          error: (String error) {
            return ErrorScreen(error: error);
          },
        );
      })),
    );
  }
}
