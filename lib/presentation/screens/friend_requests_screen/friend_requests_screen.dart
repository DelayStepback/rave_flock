import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';

class FriendRequestsScreen extends StatelessWidget {
  const FriendRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<FriendRequestsBloc>(),
      child: _FriendRequestsScreen(),
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
                    return const CircularProgressIndicator();
                  },
                  loaded: (friendRequestsEntities) {
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
                              final frienshipEntity = friendRequestsEntities[index];
                              return Row(
                                children: [
                                  Text(frienshipEntity.sourceUserUsername),
                                  ElevatedButton(onPressed: () {
                                    BlocProvider.of<FriendRequestsBloc>(context)
                                        .add(FriendRequestsAcceptEvent(
                                        frienshipEntity.id));
                                  }, child: const Text('Accept')),
                                  ElevatedButton(
                                      onPressed: () {
                                        BlocProvider.of<FriendRequestsBloc>(
                                            context).add(
                                            FriendRequestsDenyEvent(
                                                frienshipEntity.id));
                                      }, child: const Text('Deny')),

                                ],
                              );
                            })
                      ],
                    );
                  },
                  error: (e) => Text('error : $e'));
            },
          ),
        ));
  }
}
