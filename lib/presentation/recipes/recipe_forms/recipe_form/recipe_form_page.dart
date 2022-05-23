import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:cookbook_app/application/recipe_form/recipe_form_bloc.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/injection.dart';

import '../misc/recipe_items_presentation_classes.dart';
import 'widgets/add_ingredient_tile_widget.dart';
import 'widgets/add_step_tile_widget.dart';
import 'widgets/ingredient_list_widget.dart';
import 'widgets/recipe_name_field_widget.dart';
import 'widgets/step_list_widget.dart';

class RecipeFormPage extends StatelessWidget {
  final Recipe initialRecipe;
  const RecipeFormPage({
    Key? key,
    required this.initialRecipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RecipeFormBloc>()
        ..add(
          RecipeFormEvent.initialized(initialRecipe),
        ),
      child: BlocConsumer<RecipeFormBloc, RecipeFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
                current.saveFailureOrSuccessOption ||
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
            previous.isEditing != current.isEditing,
        builder: (context, state) {
          return Stack(
            children: [
              RecipeFormPageScaffold(initialRecipe: initialRecipe),
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
                '',
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

class RecipeFormPageScaffold extends StatelessWidget {
  final Recipe initialRecipe;
  const RecipeFormPageScaffold({
    Key? key,
    required this.initialRecipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<RecipeFormBloc, RecipeFormState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(
                state.isEditing ? context.editTheRecipeStr : context.recipeStr);
          },
        ),
        actions: [
          if (context.read<RecipeFormBloc>().state.isEditing)
            IconButton(
              onPressed: () {
                context
                    .read<RecipeFormBloc>()
                    .add(const RecipeFormEvent.saved());
              },
              icon: const Icon(Icons.check),
            ),
        ],
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => FormIngredients(),
          ),
          ChangeNotifierProvider(
            create: (_) => FormSteps(),
          ),
        ],
        child: Scrollbar(
          child: ListView(children: const [
            RecipeNameField(),
            Divider(indent: 20, endIndent: 20),
            IngredientList(),
            AddIngredientTile(),
            Divider(indent: 20, endIndent: 20),
            StepsList(),
            AddStepTile(),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<RecipeFormBloc>().add(
                RecipeFormEvent.initialized(initialRecipe),
              ),
          child: const Icon(Icons.edit)),
    );
  }
}
