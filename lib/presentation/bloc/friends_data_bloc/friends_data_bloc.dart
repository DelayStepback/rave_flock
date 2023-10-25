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
    on<FriendsDataDisposeEvent>(_onFriendsDataDisposeEvent);
  }

  Future<void>_onFriendsDataDisposeEvent(event,emit)async{
    emit(const FriendsDataState.init());
  }

  Future<void> _onFriendsDataInitializeEvent(
      FriendsDataInitializeEvent event, emit) async {

    print('BLOC: friends data data Init + fetching');

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
      // emit(FriendsDataState.error(error: e.toString()));
    }
  }

  Future<void> _onDeleteFriendEvent(DeleteFriendEvent event, emit) async{

  }

}
