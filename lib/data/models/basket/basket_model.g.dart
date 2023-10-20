// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketModelImpl _$$BasketModelImplFromJson(Map<String, dynamic> json) =>
    _$BasketModelImpl(
      basketItems: (json['basket_items'] as List<dynamic>)
          .map((e) => BasketItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BasketModelImplToJson(_$BasketModelImpl instance) =>
    <String, dynamic>{
      'basket_items': instance.basketItems,
    };
