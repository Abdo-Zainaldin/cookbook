part of 'settings_watcher_bloc.dart';

@freezed
class SettingsWatcherEvent with _$SettingsWatcherEvent {
  const factory SettingsWatcherEvent.watchStarted() = WatchStarted;
  const factory SettingsWatcherEvent.settingsChanged(
      Either<SettingsFailure, Settings> failureOrSettings) = SettingsChanged;
}
