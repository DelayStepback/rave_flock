// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketItemModelImpl _$$BasketItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketItemModelImpl(
      id: json['id'] as int?,
      meetId: json['meet_id'] as int,
      title: json['title'] as String,
      cost: json['cost'] as String?,
      createdByUserId: json['created_by_user_id'] as String,
      grabbedByUserId: json['grabbed_by_user_id'] as String?,
      whoWillUseIds: (json['who_will_use_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$BasketItemModelImplToJson(
        _$BasketItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meet_id': instance.meetId,
      'title': instance.title,
      'cost': instance.cost,
      'created_by_user_id': instance.createdByUserId,
      'grabbed_by_user_id': instance.grabbedByUserId,
      'image_url': instance.imageUrl,
    };
