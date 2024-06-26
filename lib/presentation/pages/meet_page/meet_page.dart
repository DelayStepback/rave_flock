import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/dialogs/are_you_sure_dialog.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/loading_screen/loading_screen.dart';
import 'package:rave_flock/services/auth_service.dart';

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
          return const LoadingScreen(); // TODO: изменить на реальный скрин
        }, loaded: (List<MeetEntity> meetsEntities) {
          return _loadedMeetsEntities(meetsEntities, context);
        }, error: (e) {
          return ErrorScreen(error: e);
        });
      },
    );
  }

  Widget _loadedMeetsEntities(List<MeetEntity> meetsEntities, BuildContext context) {
    MeetEntity? currMeetEntity;
    String? error;

    try {
      currMeetEntity = meetsEntities.firstWhere((element) => element.meetModel.meetId == meetId);
    } catch (e) {
      error = e.toString();
    }
    if (currMeetEntity != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(currMeetEntity.meetModel.title),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.goNamed('homePage');
            },
          ),
        ),
        body: Column(
          // padding: const EdgeInsets.all(20),
          children: [
            Text("#${currMeetEntity.meetModel.meetId}"),
            Text("Owner: ${currMeetEntity.meetModel.meetOwnerId}"),
            Text("Description: ${currMeetEntity.meetModel.description}"),
            Text("Location: ${currMeetEntity.meetModel.location}"),
            Text("Status: ${currMeetEntity.meetModel.status}"),
            currMeetEntity.meetModel.containsBasket
                ? ElevatedButton(
                    onPressed: () {
                      context.pushNamed('basketPage', pathParameters: {
                        'meetId': currMeetEntity!.meetModel.meetId.toString(),
                        'meetIdBasket': currMeetEntity.meetModel.meetId.toString()
                      });
                    },
                    child: Text(context.S.go_to_basket),
                  )
                : const SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                context.pushNamed('guestsOfMeetScreen', pathParameters: {
                  'meetId': currMeetEntity!.meetModel.meetId.toString(),
                });
              },
              child: Text(context.S.see_guests),
            ),
            currMeetEntity.meetModel.meetOwnerId == AuthService.getUserId()
                ? ElevatedButton(
                    onPressed: () {
                      context.pushNamed('createNewMeetScreen', extra: currMeetEntity?.meetModel);
                    },
                    child: Text(context.S.update_this_meet))
                : const SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AreYouSureDialog(
                    textContent: context.S.are_you_sure_delete_meet,
                    onConfirm: () {
                      GetIt.I<MeetDataBloc>().add(MeetDataEvent.delete(meetId));
                      context.goNamed('homePage');
                    },
                  ),
                );
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      );
    } else {
      return ErrorScreen(error: error ?? '');
    }
  }
}
