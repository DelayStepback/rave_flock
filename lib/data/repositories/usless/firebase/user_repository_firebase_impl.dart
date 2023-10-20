// import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:rave_flock/domain/repositories/user_repository.dart';
//
// import '../../datasources/useless/firebase_user_cloud_data_source.dart';
//
// class UserRepositoryImpl implements UserRepository{
//   FirebaseUserCloudDataSource _firebaseUserCloudDataSource;
//
//   UserRepositoryImpl(this._firebaseUserCloudDataSource);
//   @override
//   Future<void> addUser(UserModel user) async {
//     await _firebaseUserCloudDataSource.addUser(user);
//   }
//
//   @override
//   Future<bool> checkUsernameIsFree(String username) async{
//     // TODO: implement checkUsernameIsFree
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<void> updateUserField(UserFieldsEnum userEnum, String userId) async{
//     // TODO: implement updateUserField
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<UserModel> fetchUser(String userId) async {
//      final user = await _firebaseUserCloudDataSource.fetchUser(userId);
//       return user;
//   }
//
// }