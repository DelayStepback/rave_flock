import 'package:rave_flock/data/models/local/config_model_isar.dart';
import 'package:rave_flock/domain/entity/config_entity/config_entity.dart';

class ConfigEntityToModelIsarMapper {
  ConfigModelIsar map(ConfigEntity configEntity) {
    return ConfigModelIsar(
      locale: configEntity.locale,
      isDark: configEntity.darkTheme,
      isFirstLaunch: configEntity.isFirstLaunch,
    );
  }
}
