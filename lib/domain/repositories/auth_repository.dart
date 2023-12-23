
import 'package:rave_flock/data/models/user/user_model.dart';

abstract class AuthRepository {
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  bool isUserSignedIn();

  Future<UserModel> getCurrentUser();
}
