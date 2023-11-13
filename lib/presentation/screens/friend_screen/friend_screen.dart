import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  context.pop();
                  GetIt.I<FriendsDataBloc>().add(FriendsDataEvent.removeFriend(
                      AuthService.getUserId() ?? '', friendId));
                },
                icon: const Icon(
                  Icons.remove_circle_outline_outlined,
                  color: Colors.red,
                )),
            BlocBuilder<FriendsDataBloc, FriendsDataState>(
              buildWhen: (prev, curr) {
                if (prev == curr) {
                  return false;
                }
                return true;
              },
              builder: (context, state) {
                return state.when(
                  init: () {
                    return const CircularProgressIndicator(); // TODO:
                  },
                  loaded: (friends) {
                    UserModel friendUserModel = friends
                        .firstWhere((element) => element.userId == friendId);
                    return Center(child: Text('$friendUserModel'));
                  },
                  error: (e) => ErrorScreen(error: e),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
