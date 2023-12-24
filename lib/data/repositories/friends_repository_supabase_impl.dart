import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/common/constants/enums/friendship_status_enum.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';

import '../../main.dart';

class FriendsRepositorySupabaseImpl implements FriendsRepository {
  @override
  Future<void> sendARequest(String userId, String newFriendsUsername) async {
    final data = await supabase.from('users').select('user_id').eq('username', newFriendsUsername).maybeSingle();
    if (data == null) {
      throw ExceptionsEnum.usernameNotFound;
    } else {
      String newFriendId = data['user_id'];

      // throw if you add yourself
      if (userId == newFriendId) {
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
        if (checkIfUserAlreadyRequest['status'] == FriendshipStatusEnum.accepted.name) {
          throw ExceptionsEnum.alreadyYourFriend;
        } else {
          throw ExceptionsEnum.requestAlreadySend;
        }
      }

      if (checkIfUserRequested == null && checkIfUserAlreadyRequest == null) {
        await supabase.from('friendships').insert(
            {'user_source_id': userId, 'user_target_id': newFriendId, 'status': FriendshipStatusEnum.requested.name});
      }
    }
  }

  @override
  Future<void> acceptRequest(String userId, String friendId) async {
    // TODO:
    List<Map<String, dynamic>> checkIfUserIsSource = await supabase
        .from('friendships')
        .update({'status': FriendshipStatusEnum.accepted.name})
        .eq('user_source_id', userId)
        .eq('user_target_id', friendId)
        .select();
    if (checkIfUserIsSource.isEmpty) {
      await supabase
          .from('friendships')
          .update({'status': FriendshipStatusEnum.accepted.name})
          .eq('user_source_id', friendId)
          .eq('user_target_id', userId);
    }
  }

  @override
  Future<void> denyRequest(String userId, String friendId) async {
    // TODO:
    List<Map<String, dynamic>> checkIfUserIsSource = await supabase
        .from('friendships')
        .update({'status': FriendshipStatusEnum.denied.name})
        .eq('user_source_id', userId)
        .eq('user_target_id', friendId)
        .select();
    if (checkIfUserIsSource.isEmpty) {
      await supabase
          .from('friendships')
          .update({'status': FriendshipStatusEnum.denied.name})
          .eq('user_source_id', friendId)
          .eq('user_target_id', userId);
    }
  }

  @override
  Future<void> deleteFriend(String userId, String friendId) async {
    List<Map<String, dynamic>> checkIfUserIsSource = await supabase
        .from('friendships')
        .delete()
        .eq('user_source_id', userId)
        .eq('user_target_id', friendId)
        .eq('status', FriendshipStatusEnum.accepted.name)
        .select();
    if (checkIfUserIsSource.isEmpty) {
      await supabase
          .from('friendships')
          .delete()
          .eq('user_source_id', friendId)
          .eq('user_target_id', userId)
          .eq('status', FriendshipStatusEnum.accepted.name);
    }
  }

  @override
  Future<List<UserModel>> fetchActiveRequests(String userId) async {
    final data = await supabase
        .from('friendships')
        .select('users!friendships_user_source_id_fkey(*)')
        .eq('user_target_id', userId)
        .eq('status', FriendshipStatusEnum.requested.name);
    List<UserModel> friends = [];

    for (var json in data) {
      if (json['users'] != null) {
        friends.add(UserModel.fromJson(json['users']));
      }
    }
    return friends;
  }

  @override
  Future<List<UserModel>> fetchUserAcceptedFriendshipsSearch(String userId, String username) async {
    List<UserModel> friends = [];

    // user is source
    final data = await supabase
        .from('friendships')
        .select('users!friendships_user_target_id_fkey(*)')
        .ilike('users.username', '%$username%')
        .eq('user_source_id', userId)
        .eq('status', FriendshipStatusEnum.accepted.name);

    for (var json in data) {
      if (json['users'] != null) {
        friends.add(UserModel.fromJson(json['users']));
      }
    }

    // user is target

    final data2 = await supabase
        .from('friendships')
        .select('users!friendships_user_source_id_fkey(*)')
        .ilike('users.username', '%$username%')
        .eq('user_target_id', userId)
        .eq('status', FriendshipStatusEnum.accepted.name);

    for (var json in data2) {
      if (json['users'] != null) {
        friends.add(UserModel.fromJson(json['users']));
      }
    }
    
    return friends;
  }

  @override
  Future<List<UserModel>> fetchUserAcceptedFriendships(String userId) async {
    List<UserModel> friends = [];

    // user is source
    final data = await supabase
        .from('friendships')
        .select('users!friendships_user_target_id_fkey(*)')
        .eq('user_source_id', userId)
        .eq('status', FriendshipStatusEnum.accepted.name);

    for (var json in data) {
      if (json['users'] != null) {
        friends.add(UserModel.fromJson(json['users']));
      }
    }

    // user is target

    final data2 = await supabase
        .from('friendships')
        .select('users!friendships_user_source_id_fkey(*)')
        .eq('user_target_id', userId)
        .eq('status', FriendshipStatusEnum.accepted.name);

    for (var json in data2) {
      if (json['users'] != null) {
        friends.add(UserModel.fromJson(json['users']));
      }
    }
    return friends;
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
