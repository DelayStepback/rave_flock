import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';

import '../../../main.dart';
import '../../../services/auth_service.dart';
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';
import 'widgets/add_new_friend_widget.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: GetIt.I<FriendsDataBloc>(), child: const _FriendsPageView());
  }
}

class _FriendsPageView extends StatelessWidget {
  const _FriendsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = AuthService.getUserId();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Мои друзья'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: () {
                context
                    .read<FriendsDataBloc>()
                    .add(FriendsDataEvent.initialize(userId!));
              },
              icon: const Icon(Icons.refresh)),
          ElevatedButton(
            onPressed: () {
              // context.push('/homepage/createNewMeetScreen');
              showModalBottomSheet(
                  context: context,
                  builder: (context) => AddNewFriendWidget());
            },
            child: const Icon(Icons.add),
          ),
          BlocBuilder<FriendsDataBloc, FriendsDataState>(
            builder: (context, state) {
              return state.when(init: () {
                context
                    .read<FriendsDataBloc>()
                    .add(FriendsDataEvent.initialize(AuthService.getUserId()!));
                return const Text('LOADING');
              }, loaded: (friends) {
                return Expanded(
                  child: ListView.separated(
                    separatorBuilder: (_, index) => SizedBox(
                      height: 10,
                    ),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Имя пользователя: ${friends[index].username}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Местоположение: ${friends[index].location ?? 'скрыто'}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Кличка: ${friends[index].nickname ?? 'не задана'}',
                                  style: TextStyle(color: Colors.white),
                                ),

                              ],
                            ),
                            friends[index].avatarUrl == null? CircleAvatar(
                              minRadius: 40,
                              backgroundColor: Colors.blue,):
                            CircleAvatar(
                              minRadius: 40,
                              backgroundColor: Colors.red, backgroundImage: NetworkImage(friends[index].avatarUrl!),)
                          ],
                        ),
                      );
                    },
                  ),
                );
              }, error: (e) {
                return Text('error $e');
              });
            },
          ),
        ],
      )),
    );
  }
}
