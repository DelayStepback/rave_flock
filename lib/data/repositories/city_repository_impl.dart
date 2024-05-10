import 'package:collection/collection.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:rave_flock/data/mappers/list_dynamic_to_city_entity_mapper.dart';
import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';
import 'package:rave_flock/domain/repositories/cities_repository.dart';
import 'package:rave_flock/domain/repositories/sync_city_repository.dart';

class CityRepositoryImpl implements CitiesRepository, SyncCitiesRepository {
  CityRepositoryImpl({required this.listDynamicToCityEntityMapper});

  ListDynamicToCityEntityMapper listDynamicToCityEntityMapper;
  final Map<int, CityEntity> _cachedById = {};
  final List<CityEntity> _fullCached = [];

  @override
  Future<List<CityEntity>> getCityEntities() async {
    final asset = await rootBundle.loadString('assets/worldcities.csv');
    List<List<dynamic>> citiesAsDynamic = const CsvToListConverter().convert(asset);

    return listDynamicToCityEntityMapper.map(citiesAsDynamic);
  }

  @override
  Future<CityEntity?> getCityById(int id) async {
    final cached = _cachedById[id];
    if (cached != null) return cached;

    final cities = await getCityEntities();

    final city = cities.firstWhereOrNull((element) => element.id == id);
    if (city != null) {
      _cachedById[city.id] = city;
    }
    return city;
  }

  @override
  Future<void> loadCache() async {
    final entities = await getCityEntities();

    _fullCached.addAll(entities);
  }

  @override
  List<CityEntity> getAllSync() {
    return _fullCached;
  }

  @override
  CityEntity? getCityByIdSync(int id) {
    final cachedCity = _cachedById[id];

    if (cachedCity == null) {
      final res = _fullCached.firstWhereOrNull((element) => element.id == id);
      if (res == null) {
        return null;
      } else {
        _cachedById[id] = res;
        return res;
      }
    } else {
      return cachedCity;
    }
  }
}
