import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';

import '../../data/models/user/user_model.dart';

abstract class UserRepository{
    Future<void> updateUsername(String username,String userId);
    Future<bool> checkUsernameIsFree(String username);
    Future<UserModel> fetchUser(String userId);
    Future<bool> isUserHaveUsername(String userId);
    Future<UserModel?> updateUserField(UserFieldsEnum userEnum, String fieldValue,String userId);
}