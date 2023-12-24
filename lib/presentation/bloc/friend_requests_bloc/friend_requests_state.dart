import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
part 'friend_requests_state.freezed.dart';

@freezed
class FriendRequestsState with _$FriendRequestsState {
  const factory FriendRequestsState.init() = _FriendRequestsInit;

  const factory FriendRequestsState.loaded(
      {required List<UserModel> friendsRequests}) = _FriendRequestsLoaded;

  const factory FriendRequestsState.error({required String error}) = _FriendRequestsError;
}