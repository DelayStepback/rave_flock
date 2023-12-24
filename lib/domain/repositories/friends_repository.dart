import 'package:rave_flock/data/models/user/user_model.dart';
abstract class FriendsRepository{
    Future<List<UserModel>> fetchUserAcceptedFriendships(String userId);
    Future<List<UserModel>> fetchUserAcceptedFriendshipsSearch(String userId, String username);
    Future<List<UserModel>> fetchActiveRequests(String userId);
    Future<void> sendARequest(String userId,String newFriendsUsername);
    Future<void> acceptRequest(String userId,String friendId);
    Future<void> denyRequest(String userId,String friendId);
    Future<void> deleteFriend(String userId, String friendId);
    // TODO: работа с тегами не сделана
    Future<void> addTag(int friendshipId, String tag, String thisUserId);
    Future<void> deleteTag(int friendshipId, String tag, String thisUserId);
}

