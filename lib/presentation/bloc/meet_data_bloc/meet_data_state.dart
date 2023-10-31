import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';

part 'meet_data_state.freezed.dart';

@freezed
class MeetDataState with _$MeetDataState {
  const factory MeetDataState.init() = _MeetDataInit;

  const factory MeetDataState.loaded(
      {required List<MeetEntity> allMeetData}) = _MeetDataLoaded;

  const factory MeetDataState.error({required String error}) = _MeetDataError;
}