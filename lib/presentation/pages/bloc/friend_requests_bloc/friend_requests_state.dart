import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';

part 'friend_requests_state.freezed.dart';

@freezed
class FriendRequestsState with _$FriendRequestsState {
  const factory FriendRequestsState.init() = _FriendRequestsInit;

  const factory FriendRequestsState.loaded(
      {required List<FriendshipModel> allFriendRequests}) = _FriendRequestsLoaded;

  const factory FriendRequestsState.error({required String error}) = _FriendRequestsError;
}