import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import '../../../../domain/repositories/user_repository.dart';
import 'friends_data_event.dart';
import 'friends_data_state.dart';

class FriendsDataBloc
    extends Bloc<FriendsDataEvent, FriendsDataState> {
  final FriendsRepository _friendsRepository;
  final UserRepository _userRepository;

  FriendsDataBloc(this._friendsRepository, this._userRepository)
      : super(const FriendsDataState.init()) {
    on<FriendsDataInitializeEvent>(_onFriendsDataInitializeEvent);
    on<DeleteFriendEvent>(_onDeleteFriendEvent);

  }

  Future<void> _onFriendsDataInitializeEvent(
      FriendsDataInitializeEvent event, emit) async {
    emit(FriendsDataState.init());
    try {
      List<FriendshipModel> friendships =
      await _friendsRepository.fetchUserAcceptedFriendships(event.userId);
      List<UserModel> friends = [];
      for (var friendship in friendships) {
        final sourceUser = friendship.userSourceId == event.userId ?
        await _userRepository.fetchUser(friendship.userTargetId) : await _userRepository.fetchUser(friendship.userSourceId);
        friends.add(sourceUser);
      }
      emit(FriendsDataState.loaded(friends: friends));
    } catch (e) {
      emit(FriendsDataState.error(error: e.toString()));
    }
  }

  Future<void> _onDeleteFriendEvent(DeleteFriendEvent event, emit) async{
    // _friendsRepository.denyRequest(event.userId);
    // final state = this.state;
    // state.when(init: (){}, loaded: (loaded){
    //   List<FriendshipRequestEntity> newLoaded = [];
    //   for (var v in loaded){
    //     if (v.id != event.id) newLoaded.add(v);
    //   }
    //   emit(FriendsDataState.loaded(friendshipRequests: newLoaded));
    // }, error: (e){});
  }

}
