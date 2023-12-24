import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_data_event.freezed.dart';

@freezed
class FriendsDataEvent with _$FriendsDataEvent {
  const factory FriendsDataEvent.initialize(String userId) = FriendsDataInitializeEvent;
  const factory FriendsDataEvent.search(String userId, String username) = FriendsDataSearchEvent;
  const factory FriendsDataEvent.removeFriend(String userId, String friendId) = DeleteFriendEvent;
  const factory FriendsDataEvent.dispose() = FriendsDataDisposeEvent;
}
