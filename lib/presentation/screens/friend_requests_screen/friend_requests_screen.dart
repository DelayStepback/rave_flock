import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';
import 'package:rave_flock/presentation/screens/loading_screen/loading_screen.dart';
import 'package:rave_flock/services/auth_service.dart';
import '../error_screen/error_screen.dart';

class FriendRequestsScreen extends StatelessWidget {
  const FriendRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<FriendsDataBloc>(),
      child: BlocProvider.value(
        value: GetIt.I<FriendRequestsBloc>(),
        child: _FriendRequestsScreen(),
      ),
    );
  }
}

class _FriendRequestsScreen extends StatelessWidget {
  _FriendRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
          bloc: context.read<FriendRequestsBloc>(),
          builder: (context, state) {
            return state.when(
                init: () {
                  return const LoadingScreen();
                },
                loaded: (friendRequestsEntities) {
                  return _FriendRequestsLoadedBody(
                      friendRequestsEntities: friendRequestsEntities);
                },
                error: (e) => ErrorScreen(error: e));
          },
        ),
      ),
    );
  }
}

class _FriendRequestsLoadedBody extends StatelessWidget {
  const _FriendRequestsLoadedBody({required this.friendRequestsEntities});

  final List<UserModel> friendRequestsEntities;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('back'),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: friendRequestsEntities.length,
          itemBuilder: (context, index) {
            final friendUserModel = friendRequestsEntities[index];
            return Row(
              children: [
                Text(friendUserModel.username ?? 'UNKNOWN'),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<FriendRequestsBloc>(context)
                          .add(FriendRequestsAcceptEvent(AuthService.getUserId()??'', friendUserModel.userId));
                      BlocProvider.of<FriendsDataBloc>(context).add(
                        FriendsDataEvent.initialize(
                            AuthService.getUserId() ?? ''),
                      );
                    },
                    child: const Text('Accept')),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<FriendRequestsBloc>(context).add(
                      FriendRequestsDenyEvent(AuthService.getUserId()??'', friendUserModel.userId),
                    );
                  },
                  child: const Text('Deny'),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
