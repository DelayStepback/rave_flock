import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/domain/entity/friendship_request_entity/friendship_request_entity.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import '../../../../domain/repositories/user_repository.dart';
import 'friend_requests_event.dart';
import 'friend_requests_state.dart';

class FriendRequestsBloc
    extends Bloc<FriendRequestsEvent, FriendRequestsState> {
  final FriendsRepository _friendsRepository;
  final UserRepository _userRepository;

  FriendRequestsBloc(this._friendsRepository, this._userRepository)
      : super(const FriendRequestsState.init()) {
    on<FriendRequestsInitializeEvent>(_onFriendRequestsInitializeEvent);
    on<FriendRequestsAcceptEvent>(_onFriendRequestsAcceptEvent);
    on<FriendRequestsDenyEvent>(_onFriendRequestsDenyEvent);
    on<FriendRequestsDisposeEvent>(_onFriendRequestsDisposeEvent);
  }

  Future<void> _onFriendRequestsDisposeEvent(event,emit)async{
    emit(const FriendRequestsState.init());
  }

  Future<void> _onFriendRequestsInitializeEvent(
      FriendRequestsInitializeEvent event, emit) async {
    try {
      List<FriendshipModel> friendships =
          await _friendsRepository.fetchActiveRequests(event.userId);
      // TODO: DELETE THIS
      await Future.delayed(Duration(seconds: 5));
      print('BLOC: friends requests fetching');

      List<FriendshipRequestEntity> friendshipRequestsEntities = [];
      for (var friendship in friendships) {
        final sourceUser =
            await _userRepository.fetchUser(friendship.userSourceId);
        friendshipRequestsEntities.add(FriendshipRequestEntity(
            id: friendship.id,
            currentUserId: friendship.userTargetId,
            sourceUserUsername: sourceUser.username ?? '',
            sourceAvatarUrl: sourceUser.avatarUrl ?? ''));
      }

      emit(FriendRequestsState.loaded(
          friendshipRequests: friendshipRequestsEntities));
    } catch (e) {
      // emit(FriendRequestsState.error(error: e.toString()));
    }
  }

  Future<void> _onFriendRequestsAcceptEvent(
      FriendRequestsAcceptEvent event, emit) async {
    _friendsRepository.acceptRequest(event.id);
    final state = this.state;
    state.when(
        init: () {},
        loaded: (loaded) {
          List<FriendshipRequestEntity> newLoaded = [];
          for (var v in loaded) {
            if (v.id != event.id) newLoaded.add(v);
          }
          emit(FriendRequestsState.loaded(friendshipRequests: newLoaded));
        },
        error: (e) {});
  }

  Future<void> _onFriendRequestsDenyEvent(
      FriendRequestsDenyEvent event, emit) async {
    _friendsRepository.denyRequest(event.id);
    final state = this.state;
    state.when(
        init: () {},
        loaded: (loaded) {
          List<FriendshipRequestEntity> newLoaded = [];
          for (var v in loaded) {
            if (v.id != event.id) newLoaded.add(v);
          }
          emit(FriendRequestsState.loaded(friendshipRequests: newLoaded));
        },
        error: (e) {});
  }

  @override
  Future<void> close() {
    print('FRIENDS BLOC CLOSED');
    return super.close();
  }
}
