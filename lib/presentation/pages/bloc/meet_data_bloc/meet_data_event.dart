import 'package:freezed_annotation/freezed_annotation.dart';

part 'meet_data_event.freezed.dart';

@freezed
class MeetDataEvent with _$MeetDataEvent {
  const factory MeetDataEvent.initialize(String userId) = MeetDataInitializeEvent;
}
