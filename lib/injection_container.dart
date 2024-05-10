import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rave_flock/data/datasources/config_local_storage_datasource_isar_impl.dart';
import 'package:rave_flock/data/mappers/config_mappers/config_entity_to_config_model_mapper.dart';
import 'package:rave_flock/data/mappers/config_mappers/config_model_to_config_entity_mapper.dart';
import 'package:rave_flock/data/mappers/list_dynamic_to_city_entity_mapper.dart';
import 'package:rave_flock/data/models/local/config_model_isar.dart';
import 'package:rave_flock/data/repositories/city_repository_impl.dart';
import 'package:rave_flock/data/repositories/config_repository_impl.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/cities_repository.dart';
import 'package:rave_flock/domain/repositories/config_repository.dart';
import 'package:rave_flock/domain/repositories/config_subject.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import 'package:rave_flock/domain/repositories/user_repository.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // mapper
  sl.registerSingleton<ListDynamicToCityEntityMapper>(ListDynamicToCityEntityMapper());
  sl.registerSingleton<ConfigEntityToModelIsarMapper>(ConfigEntityToModelIsarMapper());
  sl.registerSingleton<ConfigModelIsarToEntityMapper>(ConfigModelIsarToEntityMapper());

  sl.registerSingleton<Isar>(
    await Isar.open([ConfigModelIsarSchema], directory: (await getApplicationDocumentsDirectory()).path),
  );

  // datasource
  sl.registerSingleton<ConfigLocalStorageDatasourceIsar>(ConfigLocalStorageDatasourceIsar(isar: sl()));

  // repositories
  sl.registerSingleton<FriendsRepository>(FriendsRepositorySupabaseImpl());
  sl.registerSingleton<UserRepository>(UserRepositorySupabaseImpl());
  sl.registerSingleton<MeetRepository>(MeetRepositorySupabaseImpl());
  sl.registerSingleton<CitiesRepository>(CityRepositoryImpl(listDynamicToCityEntityMapper: sl()));
  sl.registerSingleton<ConfigRepository>(ConfigRepositoryIsarImpl(sl(), sl(), sl()));
  
  // subject
  sl.registerSingleton<ConfigSubject>(ConfigRepositoryIsarImpl(sl(), sl(), sl()));

  // blocs
  sl.registerSingleton<FriendRequestsBloc>(FriendRequestsBloc(sl()));
  sl.registerSingleton<FriendsDataBloc>(FriendsDataBloc(sl()));
  sl.registerSingleton<MeetDataBloc>(MeetDataBloc(sl()));
  sl.registerSingleton<UserDataBloc>(UserDataBloc(sl()));
}
