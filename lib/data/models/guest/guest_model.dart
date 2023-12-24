// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';

part 'guest_model.freezed.dart';

part 'guest_model.g.dart';

@freezed
class GuestModel with _$GuestModel {
  const GuestModel._();

  factory GuestModel({
    @JsonKey(name: 'meet_id') required int meetId,
    @JsonKey(name: 'user_id') required String userId,
    required GuestChooseAtMeetEnum status,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
