// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['user_id'] as String,
      token: json['token'] as int?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      fullName: json['full_name'] as String?,
      location: json['location'] as String?,
      mobile: json['mobile'] as String?,
      profileDescription: json['profile_description'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      userPrivacy: $enumDecode(_$UserPrivacyEnumEnumMap, json['user_privacy']),
      createdAt: DateTime.parse(json['created_at'] as String),
      permission: $enumDecode(_$UserPermissionEnumEnumMap, json['permission']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'token': instance.token,
      'email': instance.email,
      'username': instance.username,
      'full_name': instance.fullName,
      'location': instance.location,
      'mobile': instance.mobile,
      'profile_description': instance.profileDescription,
      'avatar_url': instance.avatarUrl,
      'user_privacy': _$UserPrivacyEnumEnumMap[instance.userPrivacy]!,
      'created_at': instance.createdAt.toIso8601String(),
      'permission': _$UserPermissionEnumEnumMap[instance.permission]!,
    };

const _$UserPrivacyEnumEnumMap = {
  UserPrivacyEnum.onlyNickname: 'onlyNickname',
  UserPrivacyEnum.onlyUsernameNickname: 'onlyUsernameNickname',
  UserPrivacyEnum.onlyUsernameNicknameLocation: 'onlyUsernameNicknameLocation',
  UserPrivacyEnum.forFriends: 'forFriends',
};

const _$UserPermissionEnumEnumMap = {
  UserPermissionEnum.user: 'user',
  UserPermissionEnum.premium: 'premium',
  UserPermissionEnum.admin: 'admin',
};
