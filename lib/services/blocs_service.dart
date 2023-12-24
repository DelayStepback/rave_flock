import 'package:get_it/get_it.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import '../presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import '../presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import '../presentation/bloc/friends_data_bloc/friends_data_event.dart';
import '../presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import '../presentation/bloc/meet_data_bloc/meet_data_event.dart';
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