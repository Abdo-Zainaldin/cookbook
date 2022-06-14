part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.settingsChanged(Settings settings) =
      SettingsChanged;
  const factory SettingsEvent.toggleBetweenCloudAndLocalDB() =
      ToggleBetweenCloudAndLocalDB;
  const factory SettingsEvent.uploadLocalRecipesToCloud() =
      UploadLocalRecipesToCloud;
}
