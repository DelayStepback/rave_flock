import 'package:rave_flock/common/constants/enums/default_enums.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class MeetRepositorySupabaseImpl implements MeetRepository {
  @override
  Future<void> addMeet(MeetModel meetModel) async {
    final json = meetModel.toJson();

    if (json['meet_id'] == null) {
      json.remove('meet_id');
    }
    if (json['created_at'] == null) {
      json.remove('created_at');
    }
    final newMeetJson = await supabase.from('meets').insert(json).select();
    final newMeet = MeetModel.fromJson(newMeetJson[0]);

    // auto-insert user to guests
    createGuest(GuestModel(
        meetId: newMeet.meetId ?? -1,
        userId: meetModel.meetOwnerId,
        status: DefaultEnums.defaultGuestStatusAfterCreatingMeet));
  }

  @override
  Future<List<MeetModel>> fetchUserOwnerMeets(String userId) async {
    final data =
        await supabase.from('meets').select().eq('meet_owner_id', userId);
    List<MeetModel> meetsByOwnerId = [];
    for (var json in data) {
      meetsByOwnerId.add(MeetModel.fromJson(json));
    }
    return meetsByOwnerId;
  }

  @override
  Future<List<MeetModel>> fetchUserMeets(String userId) async {
    final data = await supabase.from('guests').select('meets(*)');
    List<MeetModel> userMeets = [];
    for (var json in data) {
      userMeets.add(MeetModel.fromJson(json['meets']));
    }
    return userMeets;
  }

  @override
  Future<void> createGuest(GuestModel guestModel) async {
    // выдает ошибку, при дублировании строк (если гость уже создан) upsert
    await supabase.from('guests').insert(guestModel.toJson());
  }

  @override
  Future<void> changeGuestStatus(int meetId, String userId,
      GuestChooseAtMeetEnum guestChooseAtMeetEnum) async {
    await supabase
        .from('guests')
        .update({'status': guestChooseAtMeetEnum.name})
        .eq('user_id', userId)
        .eq('meet_id', meetId);
  }

  @override
  Future<void> createBasketToMeet(int meetId) async {
    await supabase
        .from('meets')
        .update({'contains_basket': true}).eq('meet_id', meetId);
  }

  @override
  Future<void> addToBasketItem(BasketItemModel basketItemModel) async {
    final json = basketItemModel.toJson();

    if (json['id'] == null) {
      json.remove('id');
    }

    await supabase.from('basket_items').insert(json);
  }

  @override
  Future<void> deleteMeet(int meetId) async {
    await supabase.from('basket_items').delete().eq('meet_id', meetId);
    await supabase.from('guests').delete().eq('meet_id', meetId);
    await supabase.from('meets').delete().eq('meet_id', meetId);
  }

  @override
  Future<List<BasketItemModel>> fetchBasketItemsOfMeet(int meetId) async {
    final data =
        await supabase.from('basket_items').select().eq('meet_id', meetId);
    List<BasketItemModel> basketItems = [];
    for (var json in data) {
      basketItems.add(BasketItemModel.fromJson(json));
    }
    return basketItems;
  }

  @override
  Future<List<UserModel>> fetchGuests(int meetId) async {
    final data =
        await supabase.from('guests').select('users(*)').eq('meet_id', meetId);
    List<UserModel> usersOfMeet = [];
    for (var json in data) {
      usersOfMeet.add(UserModel.fromJson(json['users']));
    }

    return usersOfMeet;
  }

  @override
  Future<List<MeetModel>> fetchPublicMeets() async {
    final data =
        await supabase.from('meets').select().eq('meet_is_public', true);
    List<MeetModel> meets = [];
    for (var json in data) {
      meets.add(MeetModel.fromJson(json));
    }
    return meets;
  }

  @override
  Future<void> updateMeet(MeetModel meetModel) async {
    if (meetModel.meetId != null) {
      await supabase
          .from('meets')
          .update(meetModel.toJson())
          .eq('meet_id', meetModel.meetId);
    }
  }

  @override
  Future<void> userTakeThisItem(
      bool isTake, int basketItemId, String userId) async {
    final data = await supabase
        .from('basket_items')
        .select('grabbed_by_user_id')
        .eq('id', basketItemId)
        .single();
    final whoAlreadyGrab = data['grabbed_by_user_id'];
    if (whoAlreadyGrab == null && isTake) {
      await supabase
          .from('basket_items')
          .update({'grabbed_by_user_id': userId}).eq('id', basketItemId);
    } else {
      if (whoAlreadyGrab == userId && !isTake) {
        await supabase
            .from('basket_items')
            .update({'grabbed_by_user_id': null}).eq('id', basketItemId);
      }
    }
  }

  String makeStringForIdArray(List<String> array){
    String total = '';
    for (var i = 0; i < array.length; i++){
      total += array[i];
      if (i != array.length - 1){
        total += ',';
      }
    }
    return total;
  }

  @override
  Future<void> userUseThisItem(
      bool isTake, int basketItemId, String userId) async {


  }
}
