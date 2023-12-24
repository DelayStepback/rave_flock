import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/pages/welcome/sub_pages/page_viewer.dart';

import '../../bloc/friend_requests_bloc/friend_requests_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: GetIt.I<UserDataBloc>()),
    ], child: const PageViewer());
  }
}



