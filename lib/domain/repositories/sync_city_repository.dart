import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';

abstract interface class SyncCitiesRepository {
  List<CityEntity> getAllSync();
  CityEntity? getCityByIdSync(int id);
  Future<void> loadCache();
}
