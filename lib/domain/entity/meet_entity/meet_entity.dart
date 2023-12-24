import 'package:rave_flock/data/models/meet/meet_model.dart';
import '../../../data/models/basket_item/basket_item_model.dart';
import '../guest_entity/guest_entity.dart';

class MeetEntity {
  MeetModel meetModel;
  List<GuestEntity>? usersGuests;
  List<BasketItemModel>? allBasketData;
  MeetEntity({ required this.meetModel,required this.usersGuests,required this.allBasketData});

  MeetEntity copyWith({
    MeetModel? meetModel,
    List<GuestEntity>? usersGuests,
    List<BasketItemModel>? allBasketData
  }) {
    return MeetEntity(
      meetModel: meetModel ?? this.meetModel,
      usersGuests: usersGuests ?? this.usersGuests,
      allBasketData: allBasketData?? this.allBasketData
    );
  }
}