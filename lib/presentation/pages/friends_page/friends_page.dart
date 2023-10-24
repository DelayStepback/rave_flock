import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';

import '../../../main.dart';
import '../../../services/auth_service.dart';
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = AuthService.getUserId();

    context.read<FriendsDataBloc>().add(FriendsDataEvent.initialize(userId!));
    return Scaffold(
      appBar: AppBar(
        title: const Text('my friends'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/friendsPage/addNewFriendScreen');
              },
              child: Text('add new friend')),
          BlocBuilder<FriendsDataBloc, FriendsDataState>(
            builder: (context, state) {
              return state.when(init: () {
                context
                    .read<FriendsDataBloc>()
                    .add(FriendsDataEvent.initialize(AuthService.getUserId()!));
                return Text('LOADING');
              }, loaded: (friends) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      return Text('${friends[index].username}');
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
