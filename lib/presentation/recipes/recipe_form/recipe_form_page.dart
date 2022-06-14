import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cookbook_app/application/recipe/recipe_form/recipe_form_bloc.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/injection.dart';
import 'package:provider/provider.dart';

import '../../../application/settings/settings_bloc.dart';
import 'misc/recipe_items_presentation_classes.dart';
import 'creating_recipe_form_scaffold.dart';
import 'viewing_recipe_form_scaffold.dart';

class RecipeFormPage extends StatelessWidget {
  final Recipe? initialRecipe;
  const RecipeFormPage({
    Key? key,
    this.initialRecipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RecipeFormBloc>()
        ..add(
          RecipeFormEvent.initialized(
            optionOf(initialRecipe),
            isLocalDB:
                context.read<SettingsBloc>().state.settings.isUsingLocalRecipes,
          ),
        ),
      child: BlocConsumer<RecipeFormBloc, RecipeFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
                current.saveFailureOrSuccessOption ||
            previous.isCreating != current.isCreating ||
            previous.isEditing != current.isEditing,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold((failure) {
                FlushbarHelper.createError(
                    message: failure.map(
                  insufficientPermission: (_) =>
                      context.insufficientPermissionStr,
                  unableToUpdate: (_) => context.unableToUpdateStr,
                  unexpected: (_) => context.unexpectedErrorContactSupportStr,
                )).show(context);
              }, (_) {});
            },
          );
        },
        buildWhen: (previous, current) =>
            previous.isSaving != current.isSaving ||
            previous.isCreating != current.isCreating ||
            previous.isEditing != current.isEditing,
        builder: (context, state) {
          return Stack(
            children: [
              MultiProvider(
                providers: [
                  ChangeNotifierProvider(create: (_) => FormIngredients()),
                  ChangeNotifierProvider(create: (_) => FormSteps()),
                ],
                child: state.isCreating
                    ? const CreatingRecipeFormScaffold()
                    : const ViewingRecipeFormScaffold(),
              ),
              SavingProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingProgressOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                context.savingStr,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
