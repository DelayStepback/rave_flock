// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:rave_flock/common/constants/enums/user_privacy_enum.dart';
// import 'package:rave_flock/data/datasources/firebase_user_cloud_data_source.dart';
// import 'package:rave_flock/data/models/user/user_model.dart';
//
// import '../../domain/entities/user/user_entity.dart';
// // import 'package:google_sign_in/google_sign_in.dart';
//
// class FirebaseAuthDataSource {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   final FirebaseUserCloudDataSource _firebaseUserCloudDataSource;
//
//   FirebaseAuthDataSource(this._firebaseUserCloudDataSource);
//
//   Future<void> signUpWithEmailAndPassword(String email, String password) async {
//     try {
//       await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//
//       await _firebaseUserCloudDataSource.addUser(UserModel(
//           id: _firebaseAuth.currentUser!.uid,
//           username: '',
//           userPrivacyEnum: UserPrivacyEnum.onlyNickname,
//           registeredAt: DateTime.now()));
//     } catch (e) {
//       throw e.toString();
//     }
//   }
//
//   Future<void> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       await _firebaseAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//     } catch (e) {
//       throw e.toString();
//     }
//   }
//   //
//   // Future<UserCredential> signInWithGoogle() async {
//   //   try {
//   //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//   //     if (googleUser != null) {
//   //       final GoogleSignInAuthentication googleAuth =
//   //           await googleUser.authentication;
//   //       final AuthCredential credential = GoogleAuthProvider.credential(
//   //         accessToken: googleAuth.accessToken,
//   //         idToken: googleAuth.idToken,
//   //       );
//   //
//   //       // TODO:
//   //       // if (await _firebaseUserCloudDataSource.fetchUser(googleAuth.idToken) )
//   //
//   //       return await _firebaseAuth.signInWithCredential(credential);
//   //     } else {
//   //       throw Exception("Google sign-in was canceled.");
//   //     }
//   //   } catch (e) {
//   //     throw e.toString();
//   //   }
//   // }
//
//   Future<void> signOut() async {
//     await _firebaseAuth.signOut();
//   }
//
//   bool isUserSignedIn() {
//     return _firebaseAuth.currentUser != null;
//   }
//
//   Future<UserModel> getCurrentUser() async {
//     final user = _firebaseAuth.currentUser;
//
//     if (user != null) {
//       UserModel userModel =
//           await _firebaseUserCloudDataSource.fetchUser(user.uid);
//       return userModel;
//     } else {
//       throw Exception("User not found.");
//     }
//   }
// }
