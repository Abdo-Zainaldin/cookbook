import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.unexpected() = _Unexpected;
  const factory SettingsFailure.unableToInitialize() = _UnableToInitialize;
  const factory SettingsFailure.unableToUploadeLocalRecipesToCloud() =
      _UnableToUploadeLocalRecipesToCloud;
}
