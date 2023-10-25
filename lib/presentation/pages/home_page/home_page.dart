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
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/meet_data_bloc/meet_data_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => GetIt.I<FriendRequestsBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<MeetDataBloc>(),
      )
    ], child: _HomePageView());
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
                    error: (e) {
                      return Text('$e');
                    },
                  );
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
              }

              return const Text(
                'LOADING',
              );
            }, loaded: (List<MeetModel> meets) {
              return Expanded(
                child: ListView.builder(
                  itemCount: meets.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        context.goNamed('meetPage', pathParameters: {
                          'meetId': meets[index].meetId.toString()
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text('id: ${meets[index].meetId}'),
                            Text('title: ${meets[index].title}'),
                            Text('description: ${meets[index].description}'),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }, error: (String error) {
              return const Text('error');
            });
          }),
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/createNewMeetScreen');
              },
              child: const Text('createNewMeetScreen')),
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/profilePage');
              },
              child: const Text('profile page')),
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
