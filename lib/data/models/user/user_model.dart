import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/user_permission_enum.dart';

import '../../../common/constants/enums/user_privacy_enum.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    @JsonKey(name: 'user_id') required String userId,
    int? token,
    String? email,
    String? username,
    String? nickname,
    String? location,
    String? mobile,
    @JsonKey(name: 'profile_description') String? profileDescription,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'user_privacy')
    required UserPrivacyEnum userPrivacy,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required UserPermissionEnum permission,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

