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
import '../../bloc/user_data_bloc/user_data_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: GetIt.I<FriendRequestsBloc>()),
      BlocProvider.value(value: GetIt.I<FriendsDataBloc>()),
      BlocProvider.value(value: GetIt.I<MeetDataBloc>()),
      BlocProvider.value(value: GetIt.I<UserDataBloc>()),
    ], child: _HomePageView());
  }
}

class _HomePageView extends StatelessWidget {
  _HomePageView({super.key});

  final String? userIdAuth = AuthService.getUserId();

  // context
  //     .read<FriendRequestsBloc>()
  //     .add(FriendRequestsInitializeEvent(userIdAuth!));
  // context.read<MeetDataBloc>().add(MeetDataInitializeEvent(userIdAuth!));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rave Flock'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.push('/homepage/friendsPage');
                  },
                  child: const Text('My friends')),
              ElevatedButton(
                  onPressed: () {
                    context.push('/homepage/friendRequestsScreen');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.notifications_active_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
                        builder: (context, state) {
                          return state.when(
                            init: () {
                              return const Text('loading');
                            },
                            loaded:
                                (List<FriendshipRequestEntity> friendships) {
                              return Text(friendships.length.toString());
                            },
                            error: (e) {
                              return Text('$e');
                            },
                          );
                        },
                      )
                    ],
                  )),
            ],
          ),
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemCount: meets.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () {
                          context.goNamed('meetPage', pathParameters: {
                            'meetId': meets[index].meetId.toString(),
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              Text(
                                '#${meets[index].meetId}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              Text('title: ${meets[index].title}',
                                  style: const TextStyle(color: Colors.white)),
                              Text('description: ${meets[index].description}',
                                  style: const TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 30,
                      );
                    },
                  ),
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
            child: const Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/homepage/profilePage');
            },
            child: const Icon(Icons.person),
          ),
          TextButton(
              onPressed: () {
                AuthService.signOut();
                context.go('/');
              },
              child: const Text('signOut')),
        ],
      ),
    );
  }
}
