import 'package:get_it/get_it.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/blocs_service.dart';
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
  static void signOut() async{
    BlocService.resetBlocs();
    supabase.auth.signOut();
  }

  static String? getUserId(){
    return supabase.auth.currentUser?.id;
  }
}