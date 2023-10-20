// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendshipModelImpl _$$FriendshipModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FriendshipModelImpl(
      id: json['id'] as String,
      userSourceId: json['user_source_id'] as String,
      userTargetId: json['user_target_id'] as String,
      userSourceTags: (json['user_source_tags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      userTargetTags: (json['user_target_tags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      requestDate: DateTime.parse(json['request_date'] as String),
      approveDate: json['approve_date'] == null
          ? null
          : DateTime.parse(json['approve_date'] as String),
      status: $enumDecode(_$FriendshipStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$FriendshipModelImplToJson(
        _$FriendshipModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_source_id': instance.userSourceId,
      'user_target_id': instance.userTargetId,
      'user_source_tags': instance.userSourceTags,
      'user_target_tags': instance.userTargetTags,
      'request_date': instance.requestDate.toIso8601String(),
      'approve_date': instance.approveDate?.toIso8601String(),
      'status': _$FriendshipStatusEnumEnumMap[instance.status]!,
    };

const _$FriendshipStatusEnumEnumMap = {
  FriendshipStatusEnum.requested: 'requested',
  FriendshipStatusEnum.accepted: 'accepted',
  FriendshipStatusEnum.denied: 'denied',
};
