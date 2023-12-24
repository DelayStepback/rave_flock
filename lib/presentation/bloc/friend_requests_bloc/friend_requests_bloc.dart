import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'friend_requests_event.dart';
import 'friend_requests_state.dart';

class FriendRequestsBloc
    extends Bloc<FriendRequestsEvent, FriendRequestsState> {
  final FriendsRepository _friendsRepository;

  FriendRequestsBloc(this._friendsRepository)
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
    emit(FriendRequestsState.init());
    try {
      List<UserModel> friends =
          await _friendsRepository.fetchActiveRequests(event.userId);

      emit(FriendRequestsState.loaded(
          friendsRequests: friends));
    } catch (e) {
      // emit(FriendRequestsState.error(error: e.toString()));
    }
  }

  Future<void> _onFriendRequestsAcceptEvent(
      FriendRequestsAcceptEvent event, emit) async {
    await _friendsRepository.acceptRequest(event.userId, event.friendId);
    add(FriendRequestsInitializeEvent(event.userId));
  }

  Future<void> _onFriendRequestsDenyEvent(
      FriendRequestsDenyEvent event, emit) async {
    await _friendsRepository.denyRequest(event.userId, event.friendId);
    add(FriendRequestsInitializeEvent(event.userId));

  }

  @override
  Future<void> close() {
    print('FRIENDS BLOC CLOSED');
    return super.close();
  }
}
