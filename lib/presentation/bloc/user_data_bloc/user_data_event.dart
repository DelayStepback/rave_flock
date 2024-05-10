import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';

part 'user_data_event.freezed.dart';

@freezed
class UserDataEvent with _$UserDataEvent {
  const factory UserDataEvent.initialize(String userId) = UserDataInitializeEvent;
  const factory UserDataEvent.dispose() = UserDataDisposeEvent;
  const factory UserDataEvent.updateUserField(UserFieldsEnum userEnum, String fieldValue) =
      UserDataUpdateField;
}
