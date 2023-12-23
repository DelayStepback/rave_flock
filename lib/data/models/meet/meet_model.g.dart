// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetModelImpl _$$MeetModelImplFromJson(Map<String, dynamic> json) =>
    _$MeetModelImpl(
      meetId: json['meet_id'] as int?,
      meetOwnerId: json['meet_owner_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$MeetStatusEnumEnumMap, json['status']),
      location: json['location'] as String?,
      meetIsPublic: json['meet_is_public'] as bool,
      containsBasket: json['contains_basket'] as bool,
      meetAt: DateTime.parse(json['meet_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      basketEndTime: json['basket_end_time'] == null
          ? null
          : DateTime.parse(json['basket_end_time'] as String),
    );

Map<String, dynamic> _$$MeetModelImplToJson(_$MeetModelImpl instance) =>
    <String, dynamic>{
      'meet_id': instance.meetId,
      'meet_owner_id': instance.meetOwnerId,
      'title': instance.title,
      'description': instance.description,
      'status': _$MeetStatusEnumEnumMap[instance.status]!,
      'location': instance.location,
      'meet_is_public': instance.meetIsPublic,
      'contains_basket': instance.containsBasket,
      'meet_at': instance.meetAt.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'basket_end_time': instance.basketEndTime?.toIso8601String(),
    };

const _$MeetStatusEnumEnumMap = {
  MeetStatusEnum.cancelled: 'cancelled',
  MeetStatusEnum.passed: 'passed',
  MeetStatusEnum.goes: 'goes',
  MeetStatusEnum.willBe: 'willBe',
};
