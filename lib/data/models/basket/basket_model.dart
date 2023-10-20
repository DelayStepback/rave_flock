import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';

part 'basket_model.freezed.dart';
part 'basket_model.g.dart';
@freezed
class BasketModel with _$BasketModel {
  const BasketModel._();

  factory BasketModel({
    @JsonKey(name: 'basket_items') required List<BasketItemModel> basketItems,
  }) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
}

