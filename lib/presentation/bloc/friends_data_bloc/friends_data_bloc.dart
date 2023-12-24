import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/friendship/friendship_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../domain/repositories/user_repository.dart';
import 'friends_data_event.dart';
import 'friends_data_state.dart';

class FriendsDataBloc extends Bloc<FriendsDataEvent, FriendsDataState> {
  final FriendsRepository _friendsRepository;
  final UserRepository _userRepository;

  FriendsDataBloc(this._friendsRepository, this._userRepository) : super(const FriendsDataState.init()) {
    on<FriendsDataInitializeEvent>(_onFriendsDataInitializeEvent);
    on<DeleteFriendEvent>(_onDeleteFriendEvent);
    on<FriendsDataDisposeEvent>(_onFriendsDataDisposeEvent);
    on<FriendsDataSearchEvent>(_onFriendsDataSearchEvent);
  }

  Future<void> _onFriendsDataSearchEvent(FriendsDataSearchEvent event, emit) async {
    emit(const FriendsDataState.init());
    try {
      List<UserModel> friends = await _friendsRepository.fetchUserAcceptedFriendshipsSearch(event.userId, event.username);
      emit(FriendsDataState.loaded(friends: friends));
    } catch (e) {
      print('error init friends data: $e');
    }
  }

 
  Future<void> _onFriendsDataInitializeEvent(FriendsDataInitializeEvent event, emit) async {
    emit(const FriendsDataState.init());
    try {
      List<UserModel> friends = await _friendsRepository.fetchUserAcceptedFriendships(event.userId);
      emit(FriendsDataState.loaded(friends: friends));
    } catch (e) {
      // emit(FriendsDataState.error(error: e.toString()));
    }
  }

  Future<void> _onDeleteFriendEvent(DeleteFriendEvent event, emit) async {
    List<UserModel> _friends = [];
    await state
        .when(
            init: () {},
            loaded: (friends) async {
              try {
                await _friendsRepository.deleteFriend(event.userId, event.friendId).then((value) {
                  _friends.addAll(friends);
                  _friends.removeWhere((element) => element.userId == event.friendId);
                });
              } catch (e) {
                print('error to delete friend: $e');
              }
            },
            error: (e) {})
        ?.whenComplete(() => emit(FriendsDataState.loaded(friends: _friends)));
  }

   Future<void> _onFriendsDataDisposeEvent(event, emit) async {
    emit(const FriendsDataState.init());
  }

}
