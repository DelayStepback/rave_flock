import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/user_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class UserRepositorySupabaseImpl implements UserRepository {
  @override
  Future<void> updateUsername(String username, String userId) async {
    bool check = await checkUsernameIsFree(username);
    if (check) {
      await supabase.from('users').update({'username': username}).eq('user_id', userId);
    } else {
      throw ExceptionsEnum.usernameExists;
    }
  }

  @override
  Future<bool> checkUsernameIsFree(String username) async {
    final data = await supabase.from('users').select('*').eq('username', username).maybeSingle();
    return (data == null);
  }

  @override
  Future<UserModel> fetchUser(String userId) async {
    final data = await supabase.from('users').select('*').eq('user_id', userId).maybeSingle();
    return UserModel.fromJson(data);
  }

  @override
  Future<UserModel?> updateUserField(UserFieldsEnum userEnum, String fieldValue, String userId) async {
    UserModel? userModel;
    switch (userEnum) {
      case UserFieldsEnum.email:
        final userModelJson = await supabase.from('users').update({'email': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);
        break;
      case UserFieldsEnum.fullName:
        final userModelJson =
            await supabase.from('users').update({'full_name': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.location:
        final userModelJson =
            await supabase.from('users').update({'location': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.mobile:
        final userModelJson =
            await supabase.from('users').update({'mobile': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.profileDescription:
        final userModelJson =
            await supabase.from('users').update({'profile_description': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.avatarUrl:
        final userModelJson =
            await supabase.from('users').update({'avatar_url': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.userPrivacy:
        final userModelJson =
            await supabase.from('users').update({'user_privacy': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
      case UserFieldsEnum.permission:
        final userModelJson =
            await supabase.from('users').update({'permission': fieldValue}).eq('user_id', userId).select().single();
        userModel = UserModel.fromJson(userModelJson);

        break;
    }
    return userModel;
  }

  @override
  Future<bool> isUserHaveUsername(String userId) async {
    try {
      final data = await supabase.from('users').select('username').eq('user_id', userId).maybeSingle();
      return data['username'] != null;
    } catch (e) {
      throw ExceptionsEnum.usernameNotFound;
    }
  }
}
