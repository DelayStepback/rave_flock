import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';

part 'basket_data_state.freezed.dart';

@freezed
class BasketDataState with _$BasketDataState {
  const factory BasketDataState.init() = _BasketDataInit;

  const factory BasketDataState.loaded(
      {required List<BasketItemModel> allBasketData}) = _BasketDataLoaded;

  const factory BasketDataState.error({required String error}) = _BasketDataError;
}