// import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
// import 'package:rave_flock/data/datasources/useless/firebase_meet_cloud_data_source.dart';
// import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
// import 'package:rave_flock/data/models/guest/guest_model.dart';
// import 'package:rave_flock/data/models/meet/meet_model.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:rave_flock/domain/repositories/meet_repository.dart';
//
// import '../../models/basket/basket_model.dart';
//
// class MeetRepositoryImpl implements MeetRepository {
//   final FirebaseMeetCloudDataSource _firebaseMeetCloudDataSource;
//
//   MeetRepositoryImpl(this._firebaseMeetCloudDataSource);
//
//   @override
//   Future<void> addMeet(MeetModel meetModel) async {
//     await _firebaseMeetCloudDataSource.addMeet(meetModel);
//   }
//
//   @override
//   Future<void> createBasketToMeet(String meetId) async {
//     await _firebaseMeetCloudDataSource.createBasketToMeet(meetId);
//   }
//
//   @override
//   Future<void> addToBasketItem(BasketItemModel basketItemModel,
//       String meetId) async {
//     await _firebaseMeetCloudDataSource.addToBasketItem(basketItemModel, meetId);
//   }
//
//   @override
//   Future<void> changeGuestStatus(String guestId,
//       GuestChooseAtMeetEnum guestChooseAtMeetEnum) async {
//     await _firebaseMeetCloudDataSource.changeGuestStatus(
//         guestId, guestChooseAtMeetEnum);
//   }
//
//   @override
//   Future<void> deleteMeet(String id) async {
//     await _firebaseMeetCloudDataSource.deleteMeet(id);
//   }
//
//   @override
//   Future<List<UserModel>> fetchGuests(String meetId) async {
//     final guestsAtMeet = await _firebaseMeetCloudDataSource.fetchGuests(meetId);
//     return guestsAtMeet;
//   }
//
//   @override
//   Future<BasketModel> fetchBasketOfMeet(String meetId) async {
//     final basket = await _firebaseMeetCloudDataSource.fetchBasketOfMeet(meetId);
//     return basket;
//   }
//
//   @override
//   Future<List<MeetModel>> fetchPublicMeets() async {
//     final publicMeets = await _firebaseMeetCloudDataSource.fetchPublicMeets();
//     return publicMeets;
//   }
//
//   @override
//   Future<List<MeetModel>> fetchUserMeets(String userId) async {
//     final userMeets = await _firebaseMeetCloudDataSource.fetchUserMeets(userId);
//     return userMeets;
//   }
//
//   @override
//   Future<void> createGuest(GuestModel guestModel) async {
//     await _firebaseMeetCloudDataSource.createGuest(guestModel);
//   }
//
//   @override
//   Future<void> updateMeet(MeetModel meetModel) async {
//     await _firebaseMeetCloudDataSource.updateMeet(meetModel);
//   }
//
//   @override
//   Future<void> userTakeThisItem(bool isTake,
//       String basketItemId, String meetId, String userId) async {
//     await _firebaseMeetCloudDataSource.userTakeThisItem(
//         isTake, basketItemId, meetId, userId);
//   }
//
//   @override
//   Future<void> userUseThisItem(bool isTake,
//       String basketItemId, String meetId, String userId) async {
//     await _firebaseMeetCloudDataSource.userUseThisItem(isTake, basketItemId, meetId, userId);
//   }
// }
