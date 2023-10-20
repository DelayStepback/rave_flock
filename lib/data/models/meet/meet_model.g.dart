// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetModelImpl _$$MeetModelImplFromJson(Map<String, dynamic> json) =>
    _$MeetModelImpl(
      id: json['id'] as String,
      meetOwnerId: json['meet_owner_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      status: json['status'] as String,
      location: json['location'] as String?,
      meetIsPublic: json['meet_is_public'] as bool,
      containsBasket: json['contains_basket'] as bool,
      meetAt: DateTime.parse(json['meet_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      basketEndTime: json['basket_end_time'] == null
          ? null
          : DateTime.parse(json['basket_end_time'] as String),
      basketUpdatedTime: json['basket_updated_time'] == null
          ? null
          : DateTime.parse(json['basket_updated_time'] as String),
    );

Map<String, dynamic> _$$MeetModelImplToJson(_$MeetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meet_owner_id': instance.meetOwnerId,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'location': instance.location,
      'meet_is_public': instance.meetIsPublic,
      'contains_basket': instance.containsBasket,
      'meet_at': instance.meetAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'basket_end_time': instance.basketEndTime?.toIso8601String(),
      'basket_updated_time': instance.basketUpdatedTime?.toIso8601String(),
    };
