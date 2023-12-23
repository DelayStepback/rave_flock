import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_event.freezed.dart';

@freezed
class UserDataEvent with _$UserDataEvent {
  const factory UserDataEvent.initialize(String userId) = UserDataInitializeEvent;
  const factory UserDataEvent.dispose() = UserDataDisposeEvent;

}
