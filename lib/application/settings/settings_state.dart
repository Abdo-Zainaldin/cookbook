part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required Settings settings,
    required bool showUploadInProgress,
    required Option<Either<SettingsFailure, Unit>> uploadFailureOrSuccessOption,
  }) = _SettingsState;
  factory SettingsState.initial() => SettingsState(
        settings: Settings.defult(),
        showUploadInProgress: false,
        uploadFailureOrSuccessOption: none(),
      );
}
