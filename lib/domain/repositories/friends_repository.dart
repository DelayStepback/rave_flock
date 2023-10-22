import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';

abstract class FriendsRepository{
    Future<List<FriendshipModel>> fetchUserFriendships(String userId);
    Future<List<FriendshipModel>> fetchActiveRequests(String userId);
    Future<void> sendARequest(String userId,String newFriendsUsername);
    Future<void> acceptRequest(int friendshipId);
    Future<void> denyRequest(int friendshipId);
    Future<void> addTag(int friendshipId, String tag, String thisUserId);
    Future<void> deleteTag(int friendshipId, String tag, String thisUserId);
}

