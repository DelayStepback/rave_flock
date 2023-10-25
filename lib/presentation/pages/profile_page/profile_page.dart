import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_event.dart';

import '../../../services/auth_service.dart';
import '../../bloc/user_data_bloc/user_data_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<UserDataBloc>(),
      child: const _ProfilePageView(),
    );
  }
}

class _ProfilePageView extends StatelessWidget {
  const _ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile page'),
        ),
        body: Center(
          child: BlocBuilder<UserDataBloc, UserDataState>(
              builder: (context, state) {
            return state.when(
                init: () {
                  context
                      .read<UserDataBloc>()
                      .add(UserDataEvent.initialize(AuthService.getUserId()!));
                  return const CircularProgressIndicator();
                },
                loaded: (user) {
                  return Text('$user');
                },
                error: (e) => Text('error: $e'));
          }),
        ));
  }
}
