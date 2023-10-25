import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/meet/meet_model.dart';

part 'meet_data_event.freezed.dart';

@freezed
class MeetDataEvent with _$MeetDataEvent {
  const factory MeetDataEvent.initialize(String userId) = MeetDataInitializeEvent;
  const factory MeetDataEvent.add(MeetModel meetModel) = MeetDataAddEvent;
  const factory MeetDataEvent.delete(MeetModel meetModel) = MeetDataDeleteEvent;
}
