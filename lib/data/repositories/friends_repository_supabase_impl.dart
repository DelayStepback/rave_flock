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

      // throw if you add yourself
      if (userId == newFriendId){
        throw ExceptionsEnum.cannotAddYourself;
      }

      // fetch if user be requested
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

      // fetch if user request
      final checkIfUserAlreadyRequest = await supabase
          .from('friendships')
          .select('status')
          .eq('user_source_id', userId)
          .eq('user_target_id', newFriendId)
          .maybeSingle();
      if (checkIfUserAlreadyRequest != null) {
        if (checkIfUserAlreadyRequest['status'] == FriendshipStatusEnum.accepted.name){
          throw ExceptionsEnum.alreadyYourFriend;
        }
        else{
          throw ExceptionsEnum.requestAlreadySend;
        }
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
    await supabase.from('friendships').delete().eq('id', friendshipId);
  }

  @override
  Future<void> deleteFriend(String userId, String friendId) async{
    List<Map<String,dynamic>> checkIfUserIsSource = await supabase.from('friendships').delete().eq('user_source_id', userId).eq(
        'user_target_id', friendId).eq('status', FriendshipStatusEnum.accepted.name).select();

    print('checkIfUserIsSource: $checkIfUserIsSource');
    if (checkIfUserIsSource.isEmpty){
      print('1');
      await supabase.from('friendships').delete().eq( 'user_source_id', friendId).eq(
          'user_target_id', userId).eq('status', FriendshipStatusEnum.accepted.name);
    }
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
  Future<List<FriendshipModel>> fetchUserAcceptedFriendships(String userId) async {
    // user is source
    final data = await supabase
        .from('friendships')
        .select('')
        .eq('user_source_id', userId).eq('status', FriendshipStatusEnum.accepted.name);
    List<FriendshipModel> friendsModels = [];
    for (var f in data) {
      friendsModels.add(FriendshipModel.fromJson(f));
    }

    // user is target
    final data2 = await supabase
        .from('friendships')
        .select('')
        .eq('user_target_id', userId).eq('status', FriendshipStatusEnum.accepted.name);
    for (var f in data2) {
      friendsModels.add(FriendshipModel.fromJson(f));
    }

    return friendsModels;
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
