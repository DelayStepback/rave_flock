import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/constants/enums/meet_status_enum.dart';
import '../../../common/constants/enums/user_privacy_enum.dart';

part 'meet_model.freezed.dart';

part 'meet_model.g.dart';

@freezed
class MeetModel with _$MeetModel {
  const MeetModel._();

  factory MeetModel({

    @JsonKey(name: 'meet_id') int? meetId,
    @JsonKey(name: 'meet_owner_id') required String meetOwnerId,
    required String title,
    String? description,
    required MeetStatusEnum status,
    String? location,
    @JsonKey(name: 'meet_is_public') required bool meetIsPublic,
    @JsonKey(name: 'contains_basket') required bool containsBasket,
    @JsonKey(name: 'meet_at') required DateTime meetAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'basket_end_time') DateTime? basketEndTime,
  }) = _MeetModel;

  factory MeetModel.fromJson(Map<String, dynamic> json) =>
      _$MeetModelFromJson(json);
}
