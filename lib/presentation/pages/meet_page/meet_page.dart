import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({super.key, required this.meetId});

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<MeetDataBloc>(),
      child: _MeetPageView(
        meetId: meetId,
      ),
    );
  }
}



class _MeetPageView extends StatelessWidget {
  const _MeetPageView({
    super.key,
    required this.meetId,
  });

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeetDataBloc, MeetDataState>(
      builder: (context, state) {
        return state.when(init: () {
          return CircularProgressIndicator();
        }, loaded: (meets) {
          MeetModel currMeet =
              meets.firstWhere((element) => element.meetId == meetId);
          return Scaffold(
            appBar: AppBar(
              title: Text('${currMeet.title}'),
            ),
            body: Text("$currMeet"),
          );
        }, error: (e) {
          return Text('error $e');
        });
      },
    );
  }
}
