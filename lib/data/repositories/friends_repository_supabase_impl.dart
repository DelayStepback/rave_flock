import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/common/constants/enums/friendship_status_enum.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';

import '../../main.dart';

class FriendsRepositorySupabaseImpl implements FriendsRepository {
  @override
  Future<void> sendARequest(String userId, String newFriendsUsername) async {
    final data = await supabase
        .from('users')
        .select('user_id')
        .eq('username', newFriendsUsername)
        .maybeSingle();
    if (data == null) {
      throw ExceptionsEnum.usernameNotFound;
    } else {
      String newFriendId = data['user_id'];
      final checkIfUserAlreadyRequest = await supabase
          .from('friendships')
          .select('status')
          .eq('user_source_id', userId)
          .eq('user_target_id', newFriendId)
          .maybeSingle();
      if (checkIfUserAlreadyRequest != null) {
        throw ExceptionsEnum.requestAlreadySend;
      }

      final checkIfUserRequested = await supabase
          .from('friendships')
          .select('status')
          .eq('user_source_id', newFriendId)
          .eq('user_target_id', userId)
          .maybeSingle();
      if (checkIfUserRequested != null) {
        await supabase
            .from('friendships')
            .update({'status': FriendshipStatusEnum.accepted.name})
            .eq('user_source_id', newFriendId)
            .eq('user_target_id', userId);
        throw ExceptionsEnum.alreadyYourFriend;
      }

      if (checkIfUserRequested == null && checkIfUserAlreadyRequest == null) {
        await supabase.from('friendships').insert({
          'user_source_id': userId,
          'user_target_id': newFriendId,
          'status': FriendshipStatusEnum.requested.name
        });
      }
    }
  }

  @override
  Future<void> acceptRequest(int friendshipId) async {
    await supabase.from('friendships').update(
        {'status': FriendshipStatusEnum.accepted.name}).eq('id', friendshipId);
  }

  @override
  Future<void> denyRequest(int friendshipId) async {
    await supabase.from('friendships').update(
        {'status': FriendshipStatusEnum.denied.name}).eq('id', friendshipId);
  }

  @override
  Future<List<FriendshipModel>> fetchActiveRequests(String userId) async {
    final data = await supabase
        .from('friendships')
        .select()
        .eq('user_target_id', userId)
        .eq('status', FriendshipStatusEnum.requested.name);
    List<FriendshipModel> friendsRequested = [];
    for (var f in data) {
      friendsRequested.add(FriendshipModel.fromJson(f));
    }
    return friendsRequested;
  }

  @override
  Future<List<FriendshipModel>> fetchUserFriendships(String userId) async {

    // 1. он соурс, он таргет
    final data = await supabase
        .from('friendships')
        .select('')
        .eq('user_source_id', userId);
    List<FriendshipModel> friendsModels= [];
    for (var f in data) {
      friendsModels.add(FriendshipModel.fromJson(f));
    }
    return friendsModels;
    // todo:
  }

  @override
  Future<void> addTag(int friendshipId, String tag, String thisUserId) {
    // TODO: implement addTag
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTag(int friendshipId, String tag, String thisUserId) {
    // TODO: implement deleteTag
    throw UnimplementedError();
  }
}
