import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_requests_event.freezed.dart';

@freezed
class FriendRequestsEvent with _$FriendRequestsEvent {
  const factory FriendRequestsEvent.initialize(String userId) = FriendRequestsInitializeEvent;
  const factory FriendRequestsEvent.acceptRequest(String userId, String friendId) = FriendRequestsAcceptEvent;
  const factory FriendRequestsEvent.denyRequest(String userId, String friendId) = FriendRequestsDenyEvent;
  const factory FriendRequestsEvent.dispose() = FriendRequestsDisposeEvent;
}
