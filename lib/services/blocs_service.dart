import 'package:get_it/get_it.dart';
import 'package:rave_flock/services/auth_service.dart';
import '../presentation/bloc/user_data_bloc/user_data_bloc.dart';
import '../presentation/bloc/user_data_bloc/user_data_event.dart';

class BlocService{
  static void initAllBlocs(){
    if (AuthService.getUserId() != null){
      GetIt.I<UserDataBloc>().add(UserDataEvent.initialize(AuthService.getUserId()!));
    }
  }

  static void resetBlocs() {
    GetIt.I<UserDataBloc>().add(const UserDataEvent.dispose());
  }
}