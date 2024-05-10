import 'package:bloc/bloc.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../../domain/repositories/user_repository.dart';
import 'user_data_event.dart';
import 'user_data_state.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final UserRepository _userRepository;

  UserDataBloc(this._userRepository) : super(const UserDataState.init()) {
    on<UserDataInitializeEvent>(_onUserDataInitializeEvent);
    on<UserDataDisposeEvent>(_onUserDataDisposeEvent);
    on<UserDataUpdateField>(_onUserDataUpdateField);
  }
  Future<void> _onUserDataDisposeEvent(event, emit) async {
    emit(const UserDataState.init());
  }

  Future<void> _onUserDataInitializeEvent(UserDataInitializeEvent event, emit) async {
    try {
      final currentUser = await _userRepository.fetchUser(event.userId);
      emit(UserDataState.loaded(currentUser: currentUser));
    } catch (e) {
      // emit(UserDataState.error(error: e.toString()));
    }
  }

  Future<void> _onUserDataUpdateField(UserDataUpdateField event, emit) async {
    try {
      final currentUser =
          await _userRepository.updateUserField(event.userEnum, event.fieldValue, AuthService.getUserId() ?? '');
      if (currentUser != null) {
        emit(UserDataState.loaded(currentUser: currentUser));
      }
    } catch (e) {
      print(e);
      // emit(UserDataState.error(error: e.toString()));
    }
  }
}
