import 'package:supabase_flutter/supabase_flutter.dart';

import '../main.dart';

class AuthService{
  static Future<void> signInWithEmail(String email, String password) async {
    final AuthResponse res = await supabase.auth.signInWithPassword(
        email: email,
        password: password
    );
  }
  static Future<void> signUpWithEmail(String email, String password) async {
    final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: password
    );
  }
  static Future<void> signOut() async{
    supabase.auth.signOut();
  }
}