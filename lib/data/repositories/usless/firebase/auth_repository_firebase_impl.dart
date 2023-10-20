// import 'package:rave_flock/data/datasources/firebase_auth_data_source.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
// import 'package:rave_flock/domain/repositories/auth_repository.dart';
//
// class AuthRepositoryImpl implements AuthRepository {
//   final FirebaseAuthDataSource _firebaseAuthDataSource;
//
//   AuthRepositoryImpl(this._firebaseAuthDataSource);
//
//   @override
//   Future<void> signUpWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuthDataSource.signUpWithEmailAndPassword(email, password);
//   }
//
//   @override
//   Future<void> signInWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuthDataSource.signInWithEmailAndPassword(email, password);
//   }
//
//
//   @override
//   Future<void> signInWithGoogle() async {
//     // try {
//     //   await _firebaseAuthDataSource.signInWithGoogle();
//     // } catch (e) {
//     //   throw e.toString();
//     // }
//   }
//
//   @override
//   Future<void> signOut() async {
//     await _firebaseAuthDataSource.signOut();
//   }
//
//   @override
//   bool isUserSignedIn() {
//     return _firebaseAuthDataSource.isUserSignedIn();
//   }
//
//
//
//   @override
//   Future<UserModel> getCurrentUser() async {
//     final currentUser = await _firebaseAuthDataSource.getCurrentUser();
//     return currentUser;
//   }
// }
