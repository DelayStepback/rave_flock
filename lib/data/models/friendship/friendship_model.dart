import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/friendship_status_enum.dart';

part 'friendship_model.freezed.dart';

part 'friendship_model.g.dart';

@freezed
class FriendshipModel with _$FriendshipModel {
  const FriendshipModel._();

  factory FriendshipModel({
    required int id,
    @JsonKey(name: 'user_source_id') required String userSourceId,
    @JsonKey(name: 'user_target_id') required String userTargetId,
    @JsonKey(name: 'request_date') required DateTime requestDate,
    @JsonKey(name: 'approve_date') DateTime? approveDate,
    required FriendshipStatusEnum status,
  }) = _FriendshipModel;

  factory FriendshipModel.fromJson(Map<String, dynamic> json) =>
      _$FriendshipModelFromJson(json);
}
