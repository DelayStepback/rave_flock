// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:rave_flock/domain/repositories/friends_repository.dart';
//
// import '../../datasources/useless/firebase_user_cloud_data_source.dart';
//
// class FriendsRepositoryImpl implements FriendsRepository {
//   final FirebaseUserCloudDataSource firebaseUserCloudDataSource;
//
//   FriendsRepositoryImpl( this.firebaseUserCloudDataSource);
//
//   @override
//   Future<void> acceptRequest(String friendshipId) async {
//     await firebaseUserCloudDataSource.acceptRequest(friendshipId);
//   }
//
//   @override
//   Future<void> addTag(
//       String friendshipId, String tag, String thisUserId) async {
//     await firebaseUserCloudDataSource.addTag(friendshipId, tag, thisUserId);
//   }
//
//   @override
//   Future<void> deleteTag(
//       String friendshipId, String tag, String thisUserId) async {
//     await firebaseUserCloudDataSource.deleteTag(friendshipId, tag, thisUserId);
//   }
//
//   @override
//   Future<void> denyRequest(String friendshipId) async {
//     await firebaseUserCloudDataSource.denyRequest(friendshipId);
//   }
//
//   @override
//   Future<List<UserModel>> fetchUserFriends(String userId) async {
//     final userFriends = await firebaseUserCloudDataSource.fetchUserFriends(userId);
//     return userFriends;
//   }
//
//   @override
//   Future<void> sendARequest(String userId, String newFriendsUsername) async {
//     await firebaseUserCloudDataSource.sendARequest(userId, newFriendsUsername);
//   }
// }
