import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';

import '../../../data/models/meet/meet_model.dart';

part 'basket_data_event.freezed.dart';

@freezed
class BasketDataEvent with _$BasketDataEvent {
  const factory BasketDataEvent.initialize(int meetId) = BasketDataInitializeEvent;
  const factory BasketDataEvent.add(BasketItemModel basketItemModel) = BasketDataAddEvent;
  const factory BasketDataEvent.delete(BasketItemModel basketItemModel) = BasketDataDeleteEvent;
  const factory BasketDataEvent.dispose() = BasketDataDisposeEvent;

}
