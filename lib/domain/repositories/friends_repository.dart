import 'package:rave_flock/data/models/user/user_model.dart';

abstract class FriendsRepository{
    Future<List<UserModel>> fetchUserFriends(String userId);
    Future<void> sendARequest(String userId,String newFriendsUsername);
    Future<void> acceptRequest(String friendshipId);
    Future<void> denyRequest(String friendshipId);
    Future<void> addTag(String friendshipId, String tag, String thisUserId);
    Future<void> deleteTag(String friendshipId, String tag, String thisUserId);
}