// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
// import 'package:rave_flock/common/constants/enums/friendship_status_enum.dart';
// import 'package:rave_flock/data/models/friendship/friendship_model.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
//
// // TODO: CHANGE DATETIME to global
// class FirebaseUserCloudDataSource {
//   final firestore = FirebaseFirestore.instance;
//
//   Future<void> addUser(UserModel user) async {
//     final docRef = firestore.collection('users').doc();
//     user = user.copyWith(id: docRef.id);
//     // TODO:  check if username is free
//     return docRef
//         .set(user.toJson())
//         .then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }
//
//   Future<UserModel> fetchUser(String userId) async {
//     try {
//       final docData = await firestore.collection('users').doc(userId).get();
//       UserModel userModel = UserModel.fromJson(docData.data()!);
//       return userModel;
//     } catch (e) {
//       throw ExceptionsEnum.fetchUser;
//     }
//   }
//
//   Future<void> sendARequest(String userId, String newFriendsUsername) async {
//     final querySnapshot = await firestore
//         .collection('users')
//         .where('username', isEqualTo: newFriendsUsername)
//         .get();
//     if (querySnapshot.size != 0) {
//       String newFriendId = querySnapshot.docs.first.id;
//       final checkSnap1 = await firestore
//           .collection('friendships')
//           .where('user_source_id', isEqualTo: userId)
//           .where('user_target_id', isEqualTo: newFriendId)
//           .get();
//       final checkSnap2 = await firestore
//           .collection('friendships')
//           .where('user_source_id', isEqualTo: newFriendId)
//           .where('user_target_id', isEqualTo: userId)
//           .get();
//       if (checkSnap1.size == 0 && checkSnap2.size == 0) {
//         final docRef = firestore.collection('friendships').doc();
//         FriendshipModel friendshipModel = FriendshipModel(
//             id: docRef.id,
//             userSourceId: userId,
//             userTargetId: newFriendId,
//             requestDate: DateTime.now(),
//             approveDate: null,
//             status: FriendshipStatusEnum.requested);
//         await firestore.collection('friendships').add(friendshipModel.toJson());
//       } else {
//         throw ExceptionsEnum.alreadyFriends;
//       }
//     } else {
//       throw ExceptionsEnum.usernameNotFound;
//     }
//   }
//
//   Future<void> acceptRequest(String friendshipId) async {
//     final docRef = await firestore.collection('friendships').doc(friendshipId);
//     await docRef.update({'status': FriendshipStatusEnum.accepted.name});
//     await docRef.update({'approve_date': DateTime.now()});
//   }
//
//   Future<void> denyRequest(String friendshipId) async {
//     await firestore
//         .collection('friendships')
//         .doc(friendshipId)
//         .update({'status': FriendshipStatusEnum.denied.name});
//   }
//
//   Future<void> addTag(
//       String friendshipId, String tag, String thisUserId) async {
//     final docRef = await firestore.collection('friendships').doc(friendshipId);
//
//     final snapshot = await docRef.get();
//     final FriendshipModel friendshipModel =
//         FriendshipModel.fromJson(snapshot.data()!);
//     if (thisUserId == friendshipModel.userSourceId) {
//       if (!friendshipModel.userSourceTags.contains(tag)) {
//         friendshipModel.userSourceTags.add(tag);
//       }
//     }
//     if (thisUserId == friendshipModel.userTargetId) {
//       if (!friendshipModel.userTargetTags.contains(tag)) {
//         friendshipModel.userTargetTags.add(tag);
//       }
//     }
//     await docRef.update(friendshipModel.toJson());
//   }
//
//   Future<void> deleteTag(
//       String friendshipId, String tag, String thisUserId) async {
//     final docRef = await firestore.collection('friendships').doc(friendshipId);
//
//     final snapshot = await docRef.get();
//     final FriendshipModel friendshipModel =
//         FriendshipModel.fromJson(snapshot.data()!);
//     if (thisUserId == friendshipModel.userSourceId) {
//       if (friendshipModel.userSourceTags.contains(tag)) {
//         friendshipModel.userSourceTags.remove(tag);
//       }
//     }
//     if (thisUserId == friendshipModel.userTargetId) {
//       if (friendshipModel.userTargetTags.contains(tag)) {
//         friendshipModel.userTargetTags.remove(tag);
//       }
//     }
//     await docRef.update(friendshipModel.toJson());
//   }
//
//   Future<List<UserModel>> fetchUserFriends(String userId) async {
//     List<UserModel> userFriends = [];
//     await firestore
//         .collection('friendships')
//         .where('user_source_id', isEqualTo: userId)
//         .get()
//         .then((querySnapshot) async {
//       if (querySnapshot.docs.isNotEmpty) {
//         for (var docSnapshot in querySnapshot.docs) {
//           UserModel userModel =
//               await fetchUser(docSnapshot.data()['user_target_id']);
//           userFriends.add(userModel);
//         }
//       }
//     }, onError: (e) => throw ExceptionsEnum.fetchUserFriends);
//
//     await firestore
//         .collection('friendships')
//         .where('user_target_id', isEqualTo: userId)
//         .get()
//         .then((querySnapshot) async {
//       if (querySnapshot.docs.isNotEmpty) {
//         for (var docSnapshot in querySnapshot.docs) {
//           UserModel userModel =
//               await fetchUser(docSnapshot.data()['user_source_id']);
//           userFriends.add(userModel);
//         }
//       }
//     }, onError: (e) => throw ExceptionsEnum.fetchUserFriends);
//
//     return userFriends;
//   }
// }
