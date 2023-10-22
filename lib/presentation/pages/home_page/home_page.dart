import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/main.dart';
import 'package:rave_flock/presentation/pages/bloc/meet_data_bloc/meet_data_state.dart';

import '../../../data/models/meet/meet_model.dart';
import '../../../data/repositories/meet_repository_supabase_impl.dart';
import '../bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/meet_data_bloc/meet_data_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MeetDataBloc(MeetRepositorySupabaseImpl()),
      child: _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Column(
        children: [
          Icon(Icons.ac_unit_rounded),
          BlocBuilder<MeetDataBloc, MeetDataState>(builder: (context, state) {
            return state.when(init: () {
              String? userIdAuth = supabase.auth.currentUser?.id;
              if (userIdAuth != null){
                context
                    .read<MeetDataBloc>()
                    .add(MeetDataInitializeEvent(userIdAuth));
              }
              else{
                return const Text('you are not logged! ERROR'); // fix
              }

              return const Text(
                'LOADING',
              );
            }, loaded: (List<MeetModel> allMeetData) {
              return Text('$allMeetData');
            }, error: (String error) {
              return Text('error');
            });
          }),
          TextButton(
              onPressed: () {
                context.go('/login');
              },
              child: Text('login route'))
        ],
      ),
    );
  }
}
