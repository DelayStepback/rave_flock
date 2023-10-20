import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';

import '../../data/models/user/user_model.dart';

abstract class UserRepository{
    Future<bool> checkUsernameIsFree(String username);
    Future<void> addUser(UserModel user);
    Future<UserModel> fetchUser(String userId);
    Future<void> updateUserField(UserFieldsEnum userEnum, String userId);
}