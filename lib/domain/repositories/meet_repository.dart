import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket/basket_model.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';

import '../../data/models/user/user_model.dart';

abstract class MeetRepository {
  Future<List<MeetModel>> fetchUserMeets(String userId);

  Future<List<MeetModel>> fetchPublicMeets();

  Future<List<UserModel>> fetchGuests(String meetId);

  Future<void> addMeet(MeetModel meetModel);

  Future<void> updateMeet(MeetModel meetModel);

  Future<void> deleteMeet(String id);

  Future<void> createGuest(GuestModel guestModel);

  Future<void> changeGuestStatus(
      String guestId, GuestChooseAtMeetEnum guestChooseAtMeetEnum);

  Future<BasketModel> fetchBasketOfMeet(String meetId);

  Future<void> createBasketToMeet(String meetId);

  Future<void> addToBasketItem(BasketItemModel basketItemModel, String meetId);

  Future<void> userTakeThisItem(
      bool isTake, String basketItemId, String meetId, String userId);

  Future<void> userUseThisItem(
      bool isTake, String basketItemId, String meetId, String userId);
}
