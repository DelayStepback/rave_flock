import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';

part 'user_data_state.freezed.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.init() = _UserDataInit;

  const factory UserDataState.loaded(
      {required UserModel currentUser}) = _UserDataLoaded;

  const factory UserDataState.error({required String error}) = _UserDataError;
}