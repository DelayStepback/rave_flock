import 'package:rave_flock/domain/entity/config_entity/config_entity.dart';

abstract interface class ConfigSubject {
  Stream<ConfigEntity> observe();
}
