part of 'settings_watcher_bloc.dart';

@freezed
class SettingsWatcherState with _$SettingsWatcherState {
  const factory SettingsWatcherState.initial() = _Initial;
  const factory SettingsWatcherState.loadInProgress() = _LoadInProgress;
  const factory SettingsWatcherState.loadSuccess(Settings settings) =
      _LoadSuccess;
  const factory SettingsWatcherState.loadFailure(
      SettingsFailure settingsFailure) = _LoadFailure;
}
