import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/user/user_model.dart';

part 'friends_data_state.freezed.dart';

@freezed
class FriendsDataState with _$FriendsDataState {
  const factory FriendsDataState.init() = _FriendsDataInit;

  const factory FriendsDataState.loaded(
      {required List<UserModel> friends}) = _FriendsDataLoaded;

  const factory FriendsDataState.error({required String error}) = _FriendsDataError;
}