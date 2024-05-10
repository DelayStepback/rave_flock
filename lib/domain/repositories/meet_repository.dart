import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import '../entity/guest_entity/guest_entity.dart';

abstract class MeetRepository {
  Future<List<MeetModel>> fetchUserOwnerMeets(String userId);

  Future<List<MeetModel>> fetchUserMeets(String userId);
  Future<List<MeetModel>> fetchUserSearchMeets(String searchTitle, String userId);
  Future<MeetModel> fetchMeet(int meetId);

  Future<List<MeetModel>> fetchPublicMeets();

  Future<List<GuestEntity>> fetchGuests(int meetId);

  Future<MeetModel> addMeet(MeetModel meetModel);

  Future<void> updateMeet(MeetModel meetModel);

  Future<void> deleteMeet(int meetId);

  Future<void> createGuest(GuestModel guestModel);

  Future<void> inviteToMeet(String friendID, int meetId);

  Future<void> changeGuestStatus(int meetId, String userId, GuestChooseAtMeetEnum guestChooseAtMeetEnum);

  Future<void> deleteGuest(int meetId, String userId);

  Future<List<BasketItemModel>> fetchBasketItemsOfMeet(int meetId);

  Future<void> createBasketToMeet(int meetId);

  Future<BasketItemModel?> addToBasketItem(BasketItemModel basketItemModel);

  Future<void> removeBasketItem(BasketItemModel basketItemModel);

  Future<BasketItemModel?> userTakeThisItem(bool isTake, int basketItemId, String userId);

  Future<BasketItemModel?> userUseThisItem(bool isTake, int basketItemId, String userId);
}
