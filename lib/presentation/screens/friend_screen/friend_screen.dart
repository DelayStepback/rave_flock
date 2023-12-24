import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
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
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: GestureDetector(onTap: () => context.pop(), child: Icon(Icons.arrow_back_ios)),
        ),
        body: SafeArea(
          child: BlocBuilder<FriendsDataBloc, FriendsDataState>(
            builder: (context, state) {
              return state.when(
                init: () {
                  return const CircularProgressIndicator(); // TODO:
                },
                loaded: (friends) {
                  UserModel friendUserModel = friends.firstWhere((element) => element.userId == friendId);
                  return Column(
                    children: [
                      friendUserModel.avatarUrl != null
                          ? CircleAvatar(
                              backgroundImage: NetworkImage(friendUserModel.avatarUrl!),
                              radius: 130.r,
                            )
                          : SvgPicture.asset(
                        'assets/images/star_flock.svg',width: 160.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(friendUserModel.username.toString()),
                      if (friendUserModel.nickname != null) Text(friendUserModel.nickname.toString()),
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
                                child: const Center(child: Text('##')),
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
                                child: const Center(child: Text('##')),
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
                          // TODO:
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
                          child: const Center(child: Text('INVITE TO RAVE')),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pop();
                          GetIt.I<FriendsDataBloc>()
                              .add(FriendsDataEvent.removeFriend(AuthService.getUserId() ?? '', friendId));
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
                          child: const Center(child: Text('DELETE')),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),

                      // Center(child: Text('$friendUserModel'))
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
