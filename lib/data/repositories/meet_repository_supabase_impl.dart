import 'package:rave_flock/common/constants/enums/default_enums.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import '../../domain/entity/guest_entity/guest_entity.dart';
import '../../main.dart';

class MeetRepositorySupabaseImpl implements MeetRepository {
  @override
  Future<MeetModel> addMeet(MeetModel meetModel) async {
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

    return newMeet;
  }

  @override
  Future<List<MeetModel>> fetchUserOwnerMeets(String userId) async {
    final data = await supabase.from('meets').select().eq('meet_owner_id', userId);
    List<MeetModel> meetsByOwnerId = [];
    for (var json in data) {
      meetsByOwnerId.add(MeetModel.fromJson(json));
    }
    return meetsByOwnerId;
  }

  @override
  Future<List<MeetModel>> fetchUserMeets(String userId) async {
    final data = await supabase.from('guests').select('meets(*)').eq('user_id', userId);
    List<MeetModel> userMeets = [];
    for (var json in data) {
      userMeets.add(MeetModel.fromJson(json['meets']));
    }
    return userMeets;
  }

  @override
  Future<List<MeetModel>> fetchUserSearchMeets(String searchTitle, String userId) async {
    print(userId);
    final data =
        await supabase.from('guests').select('meets(*)').ilike('meets.title', '%$searchTitle%').eq('user_id', userId);
    print(data.toString());
    List<MeetModel> userMeets = [];
    for (var json in data) {
      if (json['meets'] != null) {
        userMeets.add(MeetModel.fromJson(json['meets']));
      }
    }
    return userMeets;
  }

  @override
  Future<void> createGuest(GuestModel guestModel) async {
    // выдает ошибку, при дублировании строк (если гость уже создан) upsert
    await supabase.from('guests').insert(guestModel.toJson());
  }

  @override
  Future<void> changeGuestStatus(int meetId, String userId, GuestChooseAtMeetEnum guestChooseAtMeetEnum) async {
    await supabase
        .from('guests')
        .update({'status': guestChooseAtMeetEnum.name})
        .eq('user_id', userId)
        .eq('meet_id', meetId);
  }

    @override
  Future<void> deleteGuest(int meetId, String userId) async {
     await supabase
        .from('guests')
        .delete()
        .eq('user_id', userId)
        .eq('meet_id', meetId).select();
  }

  @override
  Future<void> createBasketToMeet(int meetId) async {
    await supabase.from('meets').update({'contains_basket': true}).eq('meet_id', meetId);
  }

  @override
  Future<BasketItemModel?> addToBasketItem(BasketItemModel basketItemModel) async {
    try {
      final json = basketItemModel.toJson();

      if (json['id'] == null) {
        json.remove('id');
      }
      final newBasketItemJson = await supabase.from('basket_items').insert(json).select();
      final newBasketItem = BasketItemModel.fromJson(newBasketItemJson[0]);
      return _formBasketModelWithWhoWillUse(newBasketItem);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> deleteMeet(int meetId) async {
    try {
      await supabase.from('meets').delete().eq('meet_id', meetId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BasketItemModel>> fetchBasketItemsOfMeet(int meetId) async {
    final data = await supabase.from('basket_items').select().eq('meet_id', meetId);
    List<BasketItemModel> basketItems = [];
    for (var json in data) {
      final basketItem = BasketItemModel.fromJson(json);
      basketItems.add(await _formBasketModelWithWhoWillUse(basketItem));
    }
    return basketItems;
  }

  @override
  Future<List<GuestEntity>> fetchGuests(int meetId) async {
    final data = await supabase.from('guests').select('users(*), status').eq('meet_id', meetId);
    List<GuestEntity> guestsOfMeet = [];
    for (var json in data) {
      var userData = UserModel.fromJson(json['users']);
      guestsOfMeet.add(GuestEntity(
          userId: userData.userId,
          username: userData.username,
          fullName: userData.fullName,
          avatarUrl: userData.avatarUrl,
          status: json['status']));
    }

    return guestsOfMeet;
  }

  @override
  Future<List<MeetModel>> fetchPublicMeets() async {
    final data = await supabase.from('meets').select().eq('meet_is_public', true);
    List<MeetModel> meets = [];
    for (var json in data) {
      meets.add(MeetModel.fromJson(json));
    }
    return meets;
  }

  @override
  Future<void> updateMeet(MeetModel meetModel) async {
    if (meetModel.meetId != null) {
      await supabase.from('meets').update(meetModel.toJson()).eq('meet_id', meetModel.meetId);
    }
  }

  @override
  Future<BasketItemModel?> userTakeThisItem(bool isTake, int basketItemId, String userId) async {
    final data = await supabase.from('basket_items').select('grabbed_by_user_id').eq('id', basketItemId).single();

    final whoAlreadyGrab = data['grabbed_by_user_id'];

    if (whoAlreadyGrab == null && isTake) {
      final data =
          await supabase.from('basket_items').update({'grabbed_by_user_id': userId}).eq('id', basketItemId).select();
      final basketItemModel = BasketItemModel.fromJson(data[0]);
      return _formBasketModelWithWhoWillUse(basketItemModel);
    } else {
      if (whoAlreadyGrab == userId && !isTake) {
        final data =
            await supabase.from('basket_items').update({'grabbed_by_user_id': null}).eq('id', basketItemId).select();
        final basketItemModel = BasketItemModel.fromJson(data[0]);
        return _formBasketModelWithWhoWillUse(basketItemModel);
      }
    }
    return null;
  }

  @override
  Future<BasketItemModel?> userUseThisItem(bool isTake, int basketItemId, String userId) async {
    if (isTake) {
      final data = await supabase
          .from('basket_using_item_user_relationship')
          .upsert({'item_id': basketItemId, 'user_id': userId}).select();

      // select basket item

      final basketItemModel = await supabase.from('basket_items').select().eq('id', basketItemId).single();
      final parsedBasketItem = BasketItemModel.fromJson(basketItemModel);
      return _formBasketModelWithWhoWillUse(parsedBasketItem);
    } else {
      final data = await supabase
          .from('basket_using_item_user_relationship')
          .delete()
          .eq('user_id', userId)
          .eq('item_id', basketItemId)
          .select();
      final basketItemModel = await supabase.from('basket_items').select().eq('id', basketItemId).single();
      final parsedBasketItem = BasketItemModel.fromJson(basketItemModel);
      return _formBasketModelWithWhoWillUse(parsedBasketItem);
    }
  }

  Future<BasketItemModel> _formBasketModelWithWhoWillUse(BasketItemModel basketItem) async {
    final usersIds = await _takeAllWhoWillUseThisItemUsersIds(basketItem.id ?? -1);
    final basketItemModel = basketItem.copyWith(whoWillUseIds: usersIds);

    return basketItemModel;
  }

  Future<List<String>> _takeAllWhoWillUseThisItemUsersIds(int basketItemId) async {
    final data =
        await supabase.from('basket_using_item_user_relationship').select('user_id').eq('item_id', basketItemId);
    List<String> usersIds = [];
    for (var json in data) {
      usersIds.add(json['user_id']);
    }
    return usersIds;
  }

  String makeStringForIdArray(List<String> array) {
    String total = '';
    for (var i = 0; i < array.length; i++) {
      total += array[i];
      if (i != array.length - 1) {
        total += ',';
      }
    }
    return total;
  }

  @override
  Future<void> removeBasketItem(BasketItemModel basketItemModel) async {
    try {
      await supabase.from('basket_items').delete().eq('id', basketItemModel.id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MeetModel> fetchMeet(int meetId) async {
    final data = await supabase.from('meets').select().eq('meet_id', meetId).single();
    MeetModel meetModel = MeetModel.fromJson(data);
    print('meetFetched IN MEET_IMPL: $meetModel');
    return meetModel;
  }

  @override
  Future<void> inviteToMeet(String friendID, int meetId) async {
    print(friendID);
    print(meetId.toString());
    await supabase
        .from('guests')
        .insert({'status': GuestChooseAtMeetEnum.none.name, 'meet_id': meetId, 'user_id': friendID});
  }
}
