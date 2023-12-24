import '../main.dart';

class AuthService {
  static Future<void> signInWithEmail(String email, String password) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
  }

  static Future<void> signUpWithEmail(String email, String password) async {
    await supabase.auth.signUp(email: email, password: password);
  }

  static void signOut() async {
    supabase.auth.signOut();
  }

  static String? getUserId() {
    return supabase.auth.currentUser?.id;
  }
}
