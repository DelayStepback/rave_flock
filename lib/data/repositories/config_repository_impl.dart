import 'package:flutter/material.dart';
import 'package:rave_flock/common/constants/enums/locale_enum.dart';
import 'package:rave_flock/data/datasources/config_local_storage_datasource_isar_impl.dart';
import 'package:rave_flock/data/mappers/config_mappers/config_entity_to_config_model_mapper.dart';
import 'package:rave_flock/data/mappers/config_mappers/config_model_to_config_entity_mapper.dart';
import 'package:rave_flock/domain/entity/config_entity/config_entity.dart';
import 'package:rave_flock/domain/repositories/config_repository.dart';
import 'package:rave_flock/domain/repositories/config_subject.dart';

class ConfigRepositoryIsarImpl implements ConfigRepository, ConfigSubject {
  ConfigRepositoryIsarImpl(
    this.datasource,
    this.configModelIsarToEntityMapper,
    this.configEntityToModelIsarMapper,
  );

  final ConfigLocalStorageDatasourceIsar datasource;
  final ConfigModelIsarToEntityMapper configModelIsarToEntityMapper;
  final ConfigEntityToModelIsarMapper configEntityToModelIsarMapper;

  @override
  Future<bool> set(ConfigEntity config) {
    return datasource.set(configEntityToModelIsarMapper.map(config));
  }

  @override
  Stream<ConfigEntity> observe() {
    return datasource
        .observe()
        .map(
          (config) => config != null ? configModelIsarToEntityMapper.map(config) : _defaultConfig(),
        )
        .distinct();
  }

  @override
  Future<ConfigEntity> get() async {
    final config = await datasource.get();
    return config != null ? configModelIsarToEntityMapper.map(config) : _defaultConfig();
  }

  // TODO: get default params from some contant object or from dynamically from the system
  ConfigEntity _defaultConfig() => const ConfigEntity(
        locale: LocaleEnum.ru,
        darkTheme: ThemeMode.system,
        isFirstLaunch: true,
      );
}
