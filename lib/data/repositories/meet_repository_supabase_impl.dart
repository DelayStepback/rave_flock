import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket/basket_model.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import '../../main.dart';

class MeetRepositorySupabaseImpl implements MeetRepository{
  @override
  Future<void> addMeet(MeetModel meetModel) async {
    await supabase
        .from('meets')
        .insert(meetModel.toJson());
  }

  @override
  Future<void> addToBasketItem(BasketItemModel basketItemModel, String meetId) {
    // TODO: implement addToBasketItem
    throw UnimplementedError();
  }

  @override
  Future<void> changeGuestStatus(String guestId, GuestChooseAtMeetEnum guestChooseAtMeetEnum) {
    // TODO: implement changeGuestStatus
    throw UnimplementedError();
  }

  @override
  Future<void> createBasketToMeet(String meetId) {
    // TODO: implement createBasketToMeet
    throw UnimplementedError();
  }

  @override
  Future<void> createGuest(GuestModel guestModel) {
    // TODO: implement createGuest
    throw UnimplementedError();
  }

  @override
  Future<void> deleteMeet(String id) {
    // TODO: implement deleteMeet
    throw UnimplementedError();
  }

  @override
  Future<BasketModel> fetchBasketOfMeet(String meetId) {
    // TODO: implement fetchBasketOfMeet
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetchGuests(String meetId) {
    // TODO: implement fetchGuests
    throw UnimplementedError();
  }

  @override
  Future<List<MeetModel>> fetchPublicMeets() {
    // TODO: implement fetchPublicMeets
    throw UnimplementedError();
  }

  @override
  Future<List<MeetModel>> fetchUserMeets(String userId) {
    // TODO: implement fetchUserMeets
    throw UnimplementedError();
  }

  @override
  Future<void> updateMeet(MeetModel meetModel) {
    // TODO: implement updateMeet
    throw UnimplementedError();
  }

  @override
  Future<void> userTakeThisItem(bool isTake, String basketItemId, String meetId, String userId) {
    // TODO: implement userTakeThisItem
    throw UnimplementedError();
  }

  @override
  Future<void> userUseThisItem(bool isTake, String basketItemId, String meetId, String userId) {
    // TODO: implement userUseThisItem
    throw UnimplementedError();
  }
  
}