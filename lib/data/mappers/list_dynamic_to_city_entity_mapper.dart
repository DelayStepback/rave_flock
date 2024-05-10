import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';

class ListDynamicToCityEntityMapper {
  T? _cast<T>(x) => x is T ? x : null;

  List<CityEntity> map(List<List<dynamic>> dynamics) {
    List<CityEntity> cities = List.empty(growable: true);

    for (var city in dynamics) {
      final String? name = _cast(city[0]);
      final double? lat = _cast(city[1]);
      final double? lng = _cast(city[2]);
      final String? country = _cast(city[3]);
      final int? id = _cast(city[4]);

      if (name != null && lat != null && lng != null && country != null && id != null) {
        cities.add(
          CityEntity(name: name, lat: lat, lng: lng, country: country, id: id),
        );
      }
    }
    return cities;
  }
}
