import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/entity/friendship_request_entity/friendship_request_entity.dart';
import 'package:rave_flock/main.dart';
import 'package:rave_flock/presentation/pages/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/pages/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/pages/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/pages/bloc/meet_data_bloc/meet_data_state.dart';

import '../../../data/models/friendship/friendship_model.dart';
import '../../../data/models/meet/meet_model.dart';
import '../../../data/repositories/meet_repository_supabase_impl.dart';
import '../../../domain/auth_service.dart';
import '../bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/meet_data_bloc/meet_data_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomePageView();
  }
}

class _HomePageView extends StatelessWidget {
  _HomePageView({super.key});

  String? userIdAuth = supabase.auth.currentUser?.id;

  @override
  Widget build(BuildContext context) {
    print(userIdAuth);
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                final UserRepositorySupabaseImpl us =
                UserRepositorySupabaseImpl();
                us.isUserHaveUsername(userIdAuth!);
              },
              child: const Text('test')),
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
                context.go('/friendRequestsScreen', extra: BlocProvider.of<FriendRequestsBloc>(context));
              },
              child: const Text('friend requests screen route')),
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
