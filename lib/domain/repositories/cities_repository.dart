import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';

abstract interface class CitiesRepository {
  Future<List<CityEntity>> getCityEntities();
  Future<CityEntity?> getCityById(int id);
}
