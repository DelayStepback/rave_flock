import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import 'friend_requests_event.dart';
import 'friend_requests_state.dart';


class FriendRequestsBloc extends Bloc<FriendRequestsEvent, FriendRequestsState> {
  final FriendsRepository _friendsRepository;

  FriendRequestsBloc(this._friendsRepository)
      : super(const FriendRequestsState.init()) {
    on<FriendRequestsInitializeEvent>(_onFriendRequestsInitializeEvent);
  }
  Future<void> _onFriendRequestsInitializeEvent(FriendRequestsInitializeEvent event, emit) async {
    try{
      List<FriendshipModel> friendships = await _friendsRepository.fetchActiveRequests(event.userId);
      emit(FriendRequestsState.loaded(allFriendRequests:friendships));
    }
    catch(e){
      emit(FriendRequestsState.error(error: e.toString()));
    }
  }


}
