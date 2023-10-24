import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/entity/friendship_request_entity/friendship_request_entity.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import '../../../data/models/meet/meet_model.dart';
import '../../../services/auth_service.dart';
import '../../bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/meet_data_bloc/meet_data_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<FriendRequestsBloc>(),
      child: _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  _HomePageView({super.key});

  final String? userIdAuth = AuthService.getUserId();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                context
                    .read<FriendRequestsBloc>()
                    .add(FriendRequestsInitializeEvent(userIdAuth!));
                context
                    .read<MeetDataBloc>()
                    .add(MeetDataInitializeEvent(userIdAuth!));
              },
              icon: const Icon(Icons.refresh)),
          Row(
            children: [
              const Icon(Icons.notification_important),
              BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
                builder: (context, state) {
                  return state.when(
                      init: () {
                        if (userIdAuth != null) {
                          context
                              .read<FriendRequestsBloc>()
                              .add(FriendRequestsInitializeEvent(userIdAuth!));
                        }
                        return const Text(
                          'LOADING',
                        );
                      },
                      loaded: (List<FriendshipRequestEntity> friendships) {
                        return Text(friendships.length.toString());
                      },
                      error: (e) => Text('error $e'));
                },
              )
            ],
          ),
          const Icon(Icons.ac_unit_rounded),
          BlocBuilder<MeetDataBloc, MeetDataState>(builder: (context, state) {
            return state.when(init: () {
              if (userIdAuth != null) {
                context
                    .read<MeetDataBloc>()
                    .add(MeetDataInitializeEvent(userIdAuth!));
              } else {
                return const Text('you are not logged! ERROR'); // fix
              }

              return const Text(
                'LOADING',
              );
            }, loaded: (List<MeetModel> allMeetData) {
              return Text('$allMeetData');
            }, error: (String error) {
              return const Text('error');
            });
          }),
          ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text('login route')),
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/friendRequestsScreen');
              },
              child: const Text('friend requests screen route')),
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/friendsPage');
              },
              child: const Text('My friends')),
          TextButton(
              onPressed: () {
                AuthService.signOut();

                context.go('/login');
              },
              child: const Text('signOut')),
        ],
      ),
    );
  }
}
