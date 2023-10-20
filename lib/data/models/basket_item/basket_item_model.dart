import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_item_model.freezed.dart';
part 'basket_item_model.g.dart';

@freezed
class BasketItemModel with _$BasketItemModel {
  const BasketItemModel._();

  factory BasketItemModel({
    required String id,
    required String title,
    String? cost,
    @JsonKey(name: 'created_by_user_id') required String createdByUserId,
    @JsonKey(name: 'grabbed_by_user_id') required String? grabbedByUserId,
    @JsonKey(name: 'who_will_use_ids') required List<String>? whoWillUseIds,
    @JsonKey(name: 'image_url') required String? imageUrl,
  }) = _BasketItemModel;


  factory BasketItemModel.fromJson(Map<String, dynamic> json) =>
      _$BasketItemModelFromJson(json);
}