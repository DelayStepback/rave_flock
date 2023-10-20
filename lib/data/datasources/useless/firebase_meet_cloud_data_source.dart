// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
// import 'package:rave_flock/data/models/guest/guest_model.dart';
// import 'package:rave_flock/data/models/meet/meet_model.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
//
// import '../../common/constants/enums/guest_choose_at_meet_enum.dart';
// import '../models/basket/basket_model.dart';
// import '../models/basket_item/basket_item_model.dart';
//
// // TODO: delete all prints
// class FirebaseMeetCloudDataSource {
//   final firestore = FirebaseFirestore.instance;
//
//   Future<void> addMeet(MeetModel meetModel) async {
//     final docRef = firestore.collection('meets').doc();
//     meetModel = meetModel.copyWith(id: docRef.id); // setting id's by firebase
//
//     return docRef
//         .set(meetModel.toJson())
//         .then((value) => print("meet added"))
//         .catchError((error) => throw ExceptionsEnum.addMeet);
//   }
//
//   Future<void> deleteMeet(String id) async {
//     await firestore
//         .collection('meets')
//         .doc(id)
//         .delete()
//         .then((value) => print("meet $id deleted"))
//         .catchError(
//           (error) => throw ExceptionsEnum.deleteMeet,
//         );
//   }
//
//   Future<BasketModel> fetchBasketOfMeet(String meetId) async {
//     List<BasketItemModel> basketItems = [];
//     final docsRef = await firestore
//         .collection('meets')
//         .doc(meetId)
//         .collection('basket')
//         .get()
//         .catchError((e) => throw ExceptionsEnum.fetchBasketOfMeet);
//     for (var doc in docsRef.docs) {
//       BasketItemModel basketItemModel = BasketItemModel.fromJson(doc.data());
//       basketItems.add(basketItemModel);
//     }
//
//     BasketModel basketModel = BasketModel(basketItems: basketItems);
//     return basketModel;
//   }
//
//   Future<List<MeetModel>> fetchUserMeets(String userId) async {
//     List<MeetModel> meets = [];
//
//     await firestore
//         .collection('guests')
//         .where('guest_id', isEqualTo: userId)
//         .get()
//         .then(
//       (querySnapshot) async {
//         if (querySnapshot.docs.isNotEmpty) {
//           for (var docSnapshot in querySnapshot.docs) {
//             GuestModel currGuest = GuestModel.fromJson(docSnapshot.data());
//             await firestore
//                 .collection('meets')
//                 .where('id', isEqualTo: currGuest.meetId)
//                 .get()
//                 .then(
//               (querySnapshot) {
//                 if (querySnapshot.docs.isNotEmpty) {
//                   for (var docSnapshot in querySnapshot.docs) {
//                     meets.add(MeetModel.fromJson(docSnapshot.data()));
//                   }
//                 }
//               },
//               onError: (e) => throw ExceptionsEnum.fetchUserMeets,
//             );
//           }
//         }
//       },
//       onError: (e) => throw ExceptionsEnum.fetchUserMeets,
//     );
//     return meets;
//   }
//
//   Future<List<MeetModel>> fetchPublicMeets() async {
//     await firestore
//         .collection('meets')
//         .where('meet_is_public', isEqualTo: false)
//         .get()
//         .then(
//       (querySnapshot) {
//         if (querySnapshot.docs.isNotEmpty) {
//           List<MeetModel> meets = [];
//           for (var docSnapshot in querySnapshot.docs) {
//             meets.add(MeetModel.fromJson(docSnapshot.data()));
//           }
//           return meets;
//         }
//       },
//       onError: (e) => ExceptionsEnum.fetchPublicMeets,
//     );
//     return [];
//   }
//
//   Future<void> updateMeet(MeetModel meetModel) {
//     // TODO: not need
//     throw UnimplementedError();
//   }
//
//   // basket
//
//   Future<void> createBasketToMeet(String meetId) async {
//     await firestore
//         .collection('meets')
//         .doc(meetId)
//         .update({'contains_basket': 'true'})
//         .then((value) => print('basket created to meet'))
//         .catchError((error) => throw ExceptionsEnum.createBasketToMeet);
//   }
//
//   Future<void> addToBasketItem(
//       BasketItemModel basketItemModel, String meetId) async {
//     final docRef =
//         firestore.collection('meets').doc(meetId).collection('basket').doc();
//     basketItemModel = basketItemModel.copyWith(id: docRef.id);
//
//     return docRef
//         .set(basketItemModel.toJson())
//         .then((value) => print("Basket Item Added"))
//         .catchError((error) => throw ExceptionsEnum.addToBasketItem);
//   }
//
//   Future<void> userTakeThisItem(
//       bool isTake, String basketItemId, String meetId, String userId) async {
//     final docBasketItemRef = firestore
//         .collection('meets')
//         .doc(meetId)
//         .collection('basket')
//         .doc(basketItemId);
//     final snapshot = await docBasketItemRef.get();
//     if (snapshot.data()?['grabbed_by_user_id'] == null && isTake) {
//       await docBasketItemRef
//           .update({'grabbed_by_user_id': userId})
//           .then(
//             (value) => print("User will grab this item"),
//           )
//           .catchError(
//             (error) => throw ExceptionsEnum.userTakeThisItem,
//           );
//     }
//     if (snapshot.data()?['grabbed_by_user_id'] != null && !isTake) {
//       await docBasketItemRef
//           .update({'grabbed_by_user_id': null})
//           .then(
//             (value) => print("User not to grab this item"),
//           )
//           .catchError(
//             (error) => throw ExceptionsEnum.userTakeThisItem,
//           );
//     }
//   }
//
//   Future<void> userUseThisItem(
//       bool isTake, String basketItemId, String meetId, String userId) async {
//     final docBasketItemRef = firestore
//         .collection('meets')
//         .doc(meetId)
//         .collection('basket')
//         .doc(basketItemId);
//     final snapshot = await docBasketItemRef.get();
//     List<String> whoWillUseThisItem = [];
//     for (var snap in snapshot.data()?['who_will_use_ids']) {
//       whoWillUseThisItem.add(snap);
//     }
//
//     if (whoWillUseThisItem.contains(userId) && !isTake) {
//       whoWillUseThisItem.remove(userId);
//       await docBasketItemRef
//           .update({'who_will_use_ids': whoWillUseThisItem})
//           .then(
//             (value) => print('userId deleted from who will user this item'),
//           )
//           .catchError(
//             (error) => throw ExceptionsEnum.failedToDeleteUserUseThisItem,
//           );
//     }
//     if (!whoWillUseThisItem.contains(userId) && isTake) {
//       whoWillUseThisItem.add(userId);
//       await docBasketItemRef
//           .update({'who_will_use_ids': whoWillUseThisItem})
//           .then(
//             (value) => print('userId added to who will user this item'),
//           )
//           .catchError(
//             (error) => throw ExceptionsEnum.failedToAddUserUseThisItem,
//           );
//     }
//   }
//
//   // guests
//
//   Future<void> changeGuestStatus(
//       String guestId, GuestChooseAtMeetEnum guestChooseAtMeetEnum) async {
//     final querySnapshot = await firestore
//         .collection('guests')
//         .where('guest_id', isEqualTo: guestId)
//         .get();
//
//     if (querySnapshot.size != 0) {
//       String guestDocId = querySnapshot.docs.first.id;
//       await firestore
//           .collection('guests')
//           .doc(guestDocId)
//           .update({'status': guestChooseAtMeetEnum.name})
//           .then(
//             (value) => print(
//                 "Status $guestId changed to ${guestChooseAtMeetEnum.name}"),
//           )
//           .catchError(
//             (error) => throw ExceptionsEnum.changeGuestStatus,
//           );
//     }
//   }
//
//   Future<void> createGuest(GuestModel guestModel) async {
//     await firestore
//         .collection('guests')
//         .where('meet_id', isEqualTo: guestModel.meetId)
//         .where('guest_id', isEqualTo: guestModel.guestId)
//         .get()
//         .then(
//       (querySnapshot) async {
//         if (querySnapshot.docs.isEmpty) {
//           await firestore.collection('guests').add(guestModel.toJson());
//           print('guest added');
//         } else {
//           throw ExceptionsEnum.guestAlreadyExist;
//         }
//       },
//       onError: (e) => throw ExceptionsEnum.createGuest,
//     );
//   }
//
//   Future<List<UserModel>> fetchGuests(String meetId) async {
//     await firestore
//         .collection('guests')
//         .where('meet_id', isEqualTo: meetId)
//         .get()
//         .then(
//       (querySnapshot) {
//         if (querySnapshot.docs.isNotEmpty) {
//           List<GuestModel> guests = [];
//           for (var docSnapshot in querySnapshot.docs) {
//             guests.add(GuestModel.fromJson(docSnapshot.data()));
//           }
//           return guests;
//         }
//       },
//       onError: (e) => throw ExceptionsEnum.fetchGuests,
//     );
//     return [];
//   }
// }
