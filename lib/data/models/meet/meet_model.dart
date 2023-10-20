import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/constants/enums/user_privacy_enum.dart';
import '../basket/basket_model.dart';

part 'meet_model.freezed.dart';

part 'meet_model.g.dart';

@freezed
class MeetModel with _$MeetModel {
  const MeetModel._();

  factory MeetModel({

    required String id,
    @JsonKey(name: 'meet_owner_id') required String meetOwnerId,
    required String title,
    String? description,
    required String status,
    String? location,
    @JsonKey(name: 'meet_is_public') required bool meetIsPublic,
    @JsonKey(name: 'contains_basket') required bool containsBasket,
    @JsonKey(name: 'meet_at') required DateTime meetAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'basket_end_time') DateTime? basketEndTime,
    @JsonKey(name: 'basket_updated_time') DateTime? basketUpdatedTime,

  }) = _MeetModel;

  factory MeetModel.fromJson(Map<String, dynamic> json) =>
      _$MeetModelFromJson(json);
}
