import 'package:cookbook_app/domain/settings/settings.dart';
import 'package:dartz/dartz.dart';

import 'settings_failure.dart';

abstract class ISettingsRepository {
  Future<Either<SettingsFailure, Unit>> initLocalDB();
  Stream<Either<SettingsFailure, Settings>> watchAllSettings();
  Future<Either<SettingsFailure, Unit>> update(Settings settings);
}
