import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/auth_service.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({super.key, required this.meetId});

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(value: GetIt.I<MeetDataBloc>(),
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
            body: Column(
              children: [
                Text("$currMeet"),
                currMeet.meetOwnerId == AuthService.getUserId() ? ElevatedButton(onPressed: (){
                  context.push('/homepage/createNewMeetScreen', extra: currMeet);
                }, child: Text('update this meet')) : SizedBox.shrink()
              ],
            ),
          );
        }, error: (e) {
          return Text('error $e');
        });
      },
    );
  }
}
