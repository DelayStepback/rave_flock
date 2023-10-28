import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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
    return BlocProvider.value(
      value: GetIt.I<FriendsDataBloc>(),
        child: const _FriendsPageView());
  }
}


class _FriendsPageView extends StatelessWidget {
  const _FriendsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = AuthService.getUserId();

    return Scaffold(
      appBar: AppBar(
        title: const Text('my friends'),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(onPressed: (){
            context.read<FriendsDataBloc>().add(FriendsDataEvent.initialize(userId!));

          }, icon: const Icon(Icons.refresh)),
          ElevatedButton(
              onPressed: () {
                context.push('/homepage/friendsPage/addNewFriendScreen');
              },
              child: const Text('add new friend')),
          BlocBuilder<FriendsDataBloc, FriendsDataState>(
            builder: (context, state) {
              return state.when(init: () {
                context
                    .read<FriendsDataBloc>()
                    .add(FriendsDataEvent.initialize(AuthService.getUserId()!));
                return const Text('LOADING');
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
