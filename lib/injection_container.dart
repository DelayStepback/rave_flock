
import 'package:get_it/get_it.dart';
import 'package:rave_flock/common/validation/validation.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import 'package:rave_flock/domain/repositories/user_repository.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async{
  // repositories
  sl.registerSingleton<FriendsRepository>(FriendsRepositorySupabaseImpl());
  sl.registerSingleton<UserRepository>(UserRepositorySupabaseImpl());
  sl.registerSingleton<MeetRepository>(MeetRepositorySupabaseImpl());

  // blocs
  sl.registerSingleton<FriendRequestsBloc>(FriendRequestsBloc(sl(), sl()));
  sl.registerSingleton<FriendsDataBloc>(FriendsDataBloc(sl(), sl()));
  sl.registerSingleton<MeetDataBloc>(MeetDataBloc(sl()));
  sl.registerSingleton<UserDataBloc>(UserDataBloc(sl()));



}