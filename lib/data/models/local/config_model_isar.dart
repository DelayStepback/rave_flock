import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:rave_flock/common/constants/enums/locale_enum.dart';

part 'config_model_isar.g.dart';

@collection
class ConfigModelIsar {
  // We have only ONE config with all of the setting in there, we do not need any other ids
  Id id = 0;
  @enumerated
  LocaleEnum locale;
  @enumerated
  ThemeMode isDark;
  bool isFirstLaunch;

  ConfigModelIsar({
    required this.locale,
    required this.isDark,
    required this.isFirstLaunch,
  });
}
