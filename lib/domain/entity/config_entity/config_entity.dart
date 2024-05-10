import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/locale_enum.dart';

part 'config_entity.freezed.dart';

@freezed
class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
    required LocaleEnum locale,
    required ThemeMode darkTheme,
    required bool isFirstLaunch,
  }) = _ConfigEntity;
}
