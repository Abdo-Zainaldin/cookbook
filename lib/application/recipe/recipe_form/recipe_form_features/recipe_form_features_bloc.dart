import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_form_features_event.dart';
part 'recipe_form_features_state.dart';
part 'recipe_form_features_bloc.freezed.dart';

class RecipeFormFeaturesBloc
    extends Bloc<RecipeFormFeaturesEvent, RecipeFormFeaturesState> {
  RecipeFormFeaturesBloc() : super(RecipeFormFeaturesState.initial()) {
    on<ToggleActiveFeaturesState>((event, emit) {
      emit(state.copyWith(
        isEditing: false,
        isLiveCooking: false,
        isAnyFeatureActive: false,
      ));
    });
    on<ToggleEditingState>((event, emit) {
      emit(state.copyWith(
        isEditing: !state.isEditing,
        isAnyFeatureActive: !state.isEditing,
      ));
    });
    on<ToggleLiveCookingState>((event, emit) {
      emit(state.copyWith(
        isLiveCooking: !state.isLiveCooking,
        isAnyFeatureActive: !state.isLiveCooking,
      ));
    });
    on<CopyRecipe>((event, emit) {
      copyRecipe(event.recipe);
    });
  }
  // copy recipe to the user clipboard
  void copyRecipe(Recipe recipe) {
    String result = '${recipe.name.getOrCrash()} recipe \n\n';

    result += 'Ingredients:\n';

    List.generate(
      recipe.ingredients.getOrCrash().size,
      (index) {
        final ingredient =
            recipe.ingredients.getOrCrash()[index].name.getOrCrash();
        return result += '- $ingredient\n';
      },
    );
    result += '\n\nSteps:\n';
    List.generate(
      recipe.steps.getOrCrash().size,
      (index) {
        final step = recipe.steps.getOrCrash()[index].body.getOrCrash();
        return result += '${index + 1} - $step\n';
      },
    );
    Clipboard.setData(ClipboardData(text: result));
  }
}
