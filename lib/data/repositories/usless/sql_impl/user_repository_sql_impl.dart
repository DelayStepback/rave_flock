// import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';
// import 'package:rave_flock/data/datasources/db/sql_data_source.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:rave_flock/domain/repositories/user_repository.dart';
//
// class UserRepositorySQLImpl implements UserRepository{
//   SQLDataSource sqlDataSource;
//
//   UserRepositorySQLImpl(this.sqlDataSource);
//
//   @override
//   Future<void> addUser(UserModel user) async {
//     await sqlDataSource.addUser(user);
//   }
//
// // TODO :DEtlet
//   Future<List<UserModel>> getUsers() async {
//     return await sqlDataSource.getUsers();
//   }
//
//
//
//
//   @override
//   Future<bool> checkUsernameIsFree(String username) {
//     // TODO: implement checkUsernameIsFree
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<UserModel> fetchUser(String userId) {
//     // TODO: implement fetchUser
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<void> updateUserField(UserFieldsEnum userEnum, String userId) {
//     // TODO: implement updateUserField
//     throw UnimplementedError();
//   }
//
// }