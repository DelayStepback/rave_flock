import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/presentation/bloc/basket_data_bloc/basket_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../bloc/basket_data_bloc/basket_data_bloc.dart';

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
            body: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Text("#${currMeet.meetId}"),
                Text("Owner: ${currMeet.meetOwnerId}"),
                Text("Description: ${currMeet.description}"),
                Text("Location: ${currMeet.location}"),
                Text("Status: ${currMeet.status}"),

                currMeet.containsBasket ? ElevatedButton(
                  onPressed: () {
                    context.pushNamed('basketPage', pathParameters: {
                      'meetId': currMeet.meetId.toString(),
                      'meetIdBasket': currMeet.meetId.toString()

                    });
                  },
                  child: Text('go to basket'),
                ) : SizedBox.shrink(),
                currMeet.meetOwnerId == AuthService.getUserId()
                    ? ElevatedButton(
                    onPressed: () {
                      context.pushNamed('createNewMeetScreen',
                          extra: currMeet);
                    },
                    child: Text('update this meet'))
                    : SizedBox.shrink()
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
