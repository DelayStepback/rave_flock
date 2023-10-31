import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';

import '../../../data/models/basket_item/basket_item_model.dart';

class MeetEntity {
  MeetModel meetModel;
  List<UserModel>? usersGuests;
  List<BasketItemModel>? allBasketData;
  MeetEntity(this.meetModel, this.usersGuests, this.allBasketData);
}