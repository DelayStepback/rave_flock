import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';

import '../../data/models/user/user_model.dart';

abstract class MeetRepository {
  Future<List<MeetModel>> fetchUserOwnerMeets(String userId);

  Future<List<MeetModel>> fetchUserMeets(String userId);

  Future<List<MeetModel>> fetchPublicMeets();

  Future<List<UserModel>> fetchGuests(int meetId);

  Future<void> addMeet(MeetModel meetModel);

  Future<void> updateMeet(MeetModel meetModel);

  Future<void> deleteMeet(int meetId);

  Future<void> createGuest(GuestModel guestModel);

  Future<void> changeGuestStatus(int meetId,
      String userId, GuestChooseAtMeetEnum guestChooseAtMeetEnum);

  Future<List<BasketItemModel>> fetchBasketItemsOfMeet(int meetId);

  Future<void> createBasketToMeet(int meetId);

  Future<void> addToBasketItem(BasketItemModel basketItemModel);

  Future<void> userTakeThisItem(
      bool isTake, int basketItemId, String userId);

  Future<void> userUseThisItem(
      bool isTake, int basketItemId, String userId);
}
