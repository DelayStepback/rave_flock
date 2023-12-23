import 'package:bloc/bloc.dart';

import '../../../domain/repositories/user_repository.dart';
import 'user_data_event.dart';
import 'user_data_state.dart';


class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final UserRepository _userRepository;

  UserDataBloc(this._userRepository)
      : super(const UserDataState.init()) {
    on<UserDataInitializeEvent>(_onUserDataInitializeEvent);
    on<UserDataDisposeEvent>(_onUserDataDisposeEvent);
  }
  Future<void> _onUserDataDisposeEvent(event,emit)async{
    emit(const UserDataState.init());
  }
  Future<void> _onUserDataInitializeEvent(UserDataInitializeEvent event, emit) async {
    // TODO: delete delay
    await Future.delayed(const Duration(seconds: 5));
    print('BLOC: user data fetching');
    try{
      final currentUser = await _userRepository.fetchUser(event.userId);
      emit(UserDataState.loaded(currentUser: currentUser));
    }
    catch(e){
      // emit(UserDataState.error(error: e.toString()));
    }
  }


}
