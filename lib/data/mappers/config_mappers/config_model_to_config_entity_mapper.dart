import 'package:rave_flock/data/models/local/config_model_isar.dart';
import 'package:rave_flock/domain/entity/config_entity/config_entity.dart';

class ConfigModelIsarToEntityMapper {
  ConfigEntity map(ConfigModelIsar configModelIsar) {
    return ConfigEntity(
      locale: configModelIsar.locale,
      darkTheme: configModelIsar.isDark,
      isFirstLaunch: configModelIsar.isFirstLaunch,
    );
  }

  List<ConfigEntity> mapList(List<ConfigModelIsar> configModelIsar) {
    return configModelIsar.map((e) => map(e)).toList();
  }
}
