import 'package:cookbook_app/domain/settings/settings.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/recipes/i_recipe_repository.dart';
import '../../domain/settings/i_settings_repository.dart';
import '../../domain/settings/settings_failure.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _settingsRepository;
  final IRecipeRepository _recipeRepository;

  SettingsBloc(
    this._settingsRepository,
    this._recipeRepository,
  ) : super(SettingsState.initial()) {
    on<SettingsChanged>((event, emit) {
      _settingsRepository.update(event.settings);
      emit(state.copyWith(
        settings: event.settings,
      ));
    });
    on<ToggleBetweenCloudAndLocalDB>((event, emit) {
      _settingsRepository.update(state.settings
          .copyWith(isUsingLocalRecipes: !state.settings.isUsingLocalRecipes));
    });
    on<UploadLocalRecipesToCloud>((event, emit) async {
      emit(state.copyWith(
        showUploadInProgress: true,
        uploadFailureOrSuccessOption: none(),
      ));

      final failureOrSuccess =
          await _recipeRepository.uploadLocalSavedRecipesToCloud();

      emit(state.copyWith(
        showUploadInProgress: false,
        uploadFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
