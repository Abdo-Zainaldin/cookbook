import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    required bool isUsingLocalRecipes,
    required String? appLanguage,
    required String appFont,
  }) = _Settings;

  factory Settings.defult() => const Settings(
        isUsingLocalRecipes: false,
        appLanguage: null,
        appFont: 'Roboto',
      );

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
