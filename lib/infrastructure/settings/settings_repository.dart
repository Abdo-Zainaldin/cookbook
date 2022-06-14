import 'package:cookbook_app/domain/settings/i_settings_repository.dart';
import 'package:cookbook_app/domain/settings/settings.dart';
import 'package:dartz/dartz.dart';
import 'package:cookbook_app/domain/settings/settings_failure.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:listenable_stream/listenable_stream.dart';
import 'package:rxdart/rxdart.dart';

import '../recipes/recipe_local_db_service/recipe_local_db_model.dart';
import '../recipes/recipe_local_db_service/recipe_local_db_service.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  static const String settingsBoxName = 'settingsBox';

  @override
  Future<Either<SettingsFailure, Unit>> initLocalDB() async {
    try {
      Hive.registerAdapter(RecipeLocalDBModelAdapter());
      await Hive.openBox<RecipeLocalDBModel>(
          RecipeLocalDBService.recipeBoxName);

      await Hive.openBox(settingsBoxName);
      final settingsBox = Hive.box(settingsBoxName);
      // if the user opened the app for the first time the settings box will be empty
      // and that's why we add default settings to the settings box
      if (settingsBox.isEmpty) {
        settingsBox.add(Settings.defult().toJson());
      }

      return right(unit);
    } on PlatformException {
      return left(const SettingsFailure.unableToInitialize());
    }
  }

  @override
  Stream<Either<SettingsFailure, Settings>> watchAllSettings() async* {
    await Hive.openBox(settingsBoxName);
    final settingsBox = Hive.box(settingsBoxName);

    // Here we yield initial snapshot of the data,
    // because hive packge dose not provide us with an initial snapshot when watching the database
    // by default like firestore
    yield right(
        Settings.fromJson(Map<String, dynamic>.from(settingsBox.values.first)));

    // listen to the settingsBox changes
    yield* settingsBox.listenable().toValueStream().map(
      (snapshot) {
        return right<SettingsFailure, Settings>(Settings.fromJson(
            Map<String, dynamic>.from(settingsBox.values.first)));
      },
    ).onErrorReturnWith((e, stackTrace) {
      return left(const SettingsFailure.unexpected());
    });
  }

  @override
  Future<Either<SettingsFailure, Unit>> update(Settings settings) async {
    try {
      final settingsBox = Hive.box(settingsBoxName);

      settingsBox.putAt(0, settings.toJson());

      return right(unit);
    } on PlatformException {
      return left(const SettingsFailure.unexpected());
    }
  }
}
