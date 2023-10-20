// import 'dart:io';
//
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:sqflite/sqflite.dart';
//
// class CreatingTableSQLHelper{
//   static const String usersTable = '''CREATE TABLE users(
//       id TEXT,
//       email TEXT,
//       username TEXT,
//       nickname TEXT,
//       location TEXT,
//       mobile TEXT,
//       profile_description TEXT,
//       image_url TEXT,
//       user_privacy TEXT,
//       registered_at TEXT,
//       permission TEXT
//     )
//     ''';
// }
//
// class SQLDataSource {
//
//   SQLDataSource._privateConstructor();
//   static final SQLDataSource instance = SQLDataSource._privateConstructor();
//
//   static Database? _database;
//   Future<Database> get database async => _database ??= await _initDatabase();
//
//   Future<Database> _initDatabase() async{
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, 'rave_flock.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate
//     );
//   }
//
//   Future _onCreate(Database db, int version) async{
//     await db.execute(CreatingTableSQLHelper.usersTable);
//   }
//
//   Future<List<UserModel>> getUsers() async{
//     Database db = await instance.database;
//     var users = await db.query('users', orderBy: 'username');
//
//     List<UserModel> userList = users.isNotEmpty? users.map((c) => UserModel.fromJson(c)).toList():[];
//     return userList;
//   }
//   Future<int> addUser(UserModel userModel) async{
//     Database db = await instance.database;
//     print('aading: $userModel');
//     return await db.insert('users', userModel.toJson());
//     // var UserModel
//   }
//
//
//
// }