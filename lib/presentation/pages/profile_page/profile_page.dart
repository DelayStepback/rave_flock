import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_event.dart';

import '../../../services/auth_service.dart';
import '../../bloc/user_data_bloc/user_data_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: GetIt.I<UserDataBloc>(), child: const _ProfilePageView());
  }
}

class _ProfilePageView extends StatelessWidget {
  const _ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => context.pop(),
          ),
          // title: Text('Your Profile :)'),
          centerTitle: true,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Your Profile :)'),

            background: Container(color: Colors.pink),
          ),
        ),
        SliverToBoxAdapter(
          child: TextButton(
            onPressed: (){
              AuthService.signOut();
              context.go('/');
            },
            child: Text('log out'),
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: BlocBuilder<UserDataBloc, UserDataState>(
                builder: (context, state) {
              return state.when(
                  init: () {
                    context.read<UserDataBloc>().add(
                        UserDataEvent.initialize(AuthService.getUserId()!));
                    return const CircularProgressIndicator();
                  },
                  loaded: (user) {
                    return Text(
                      '$user',
                      style: TextStyle(fontSize: 40),
                    );
                  },
                  error: (e) => Text('error: $e'));
            }),
          ),
        )
      ],
    ));
  }
}
