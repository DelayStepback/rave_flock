import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';
part 'city_entity.g.dart';

@freezed
class CityEntity with _$CityEntity {
  const factory CityEntity({
    required String name,
    required double lat,
    required double lng,
    required String country,
    required int id,
  }) = _CityEntity;
  factory CityEntity.fromJson(Map<String, Object?> json) => _$CityEntityFromJson(json);
}
