import 'package:isar/isar.dart';
import 'package:rave_flock/data/models/local/config_model_isar.dart';

class ConfigLocalStorageDatasourceIsar {
  ConfigLocalStorageDatasourceIsar({required this.isar});

  Isar isar;

  Stream<ConfigModelIsar?> observe() async* {
    yield* isar.configModelIsars.where().watch(fireImmediately: true).map((config) => config.firstOrNull);
  }

  Future<ConfigModelIsar?> get() async {
    return isar.configModelIsars.where().findFirst();
  }

  Future<bool> set(ConfigModelIsar config) async {
    await isar.writeTxn(() async {
      await isar.configModelIsars.put(config);
    });

    // We return true if everything is okay
    // Otherwise exception from isar will be throwm I think
    return true;
  }
}
