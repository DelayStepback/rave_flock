import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/auth_service.dart';

class GuestsOfMeetScreen extends StatelessWidget {
  const GuestsOfMeetScreen({super.key, required this.meetId});
  final int meetId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: GetIt.I<MeetDataBloc>(),
      builder: (context, MeetDataState state) {
        return state.maybeWhen(
          loaded: (List<MeetEntity> meetsEntities) {
            final meet = meetsEntities.firstWhere((element) => element.meetModel.meetId == meetId);

            return _ListOfGuestsWidget(meet: meet);
          },
          orElse: () {
            return Text(context.S.error);
          },
        );
      },
    );
  }
}

class _ListOfGuestsWidget extends StatelessWidget {
  const _ListOfGuestsWidget({
    super.key,
    required this.meet,
  });

  final MeetEntity meet;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meet.usersGuests?.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (meet.meetModel.meetOwnerId == AuthService.getUserId()) {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        children: [
                          meet.usersGuests?[index].status != GuestChooseAtMeetEnum.organizator.name
                              ? GestureDetector(
                                  onTap: () {
                                    GetIt.I<MeetDataBloc>().add(
                                      MeetDataEvent.makeOrganizator(meet.usersGuests![index].userId,
                                          meet.meetModel.meetId!, meet.usersGuests![index].status ?? 'none'),
                                    );
                                    context.pop();
                                  },
                                  child: Text(context.S.make_organizator_role))
                              : GestureDetector(
                                  onTap: () {
                                    GetIt.I<MeetDataBloc>().add(
                                      MeetDataEvent.unMakeOrganizator(meet.usersGuests![index].userId,
                                          meet.meetModel.meetId!, meet.usersGuests![index].status ?? 'none'),
                                    );
                                    context.pop();
                                  },
                                  child: Text(context.S.unmake_organizator_role)),
                          GestureDetector(
                              onTap: () {
                                GetIt.I<MeetDataBloc>().add(
                                  MeetDataEvent.removeGuestInvite(
                                      meet.usersGuests![index].userId, meet.meetModel.meetId!),
                                );
                                context.pop();
                              },
                              child: Text(context.S.remove_from_meet)),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
          child: Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(color: Colors.blue),
              child: Text('${meet.usersGuests![index].username ?? context.S.error} ${meet.usersGuests![index].status}')),
        );
      },
    );
  }
}
