import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../application/recipe/recipe_form/recipe_form_bloc.dart';

import '../../../application/recipe/recipe_form/recipe_form_features/recipe_form_features_bloc.dart';
import 'widgets/add_ingredient_field_widget.dart';
import 'widgets/add_step_tile_widget.dart';
import 'widgets/ingredient_list_widget.dart';
import 'widgets/recipe_name_field_widget.dart';
import 'widgets/step_list_widget.dart';

class ViewingRecipeFormScaffold extends StatelessWidget {
  const ViewingRecipeFormScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeFormFeaturesBloc(),
      child: BlocListener<RecipeFormFeaturesBloc, RecipeFormFeaturesState>(
        listenWhen: (previous, current) =>
            previous.isEditing || current.isEditing,
        listener: (context, state) {
          context
              .read<RecipeFormBloc>()
              .add(RecipeFormEvent.editingFormStateChanged(state.isEditing));
        },
        child: BlocConsumer<RecipeFormBloc, RecipeFormState>(
          listenWhen: (previous, current) =>
              previous.saveFailureOrSuccessOption !=
              current.saveFailureOrSuccessOption,
          listener: (context, state) {
            bool isSuccessfullySaved =
                state.saveFailureOrSuccessOption.isSome();
            if (isSuccessfullySaved) {
              context.read<RecipeFormFeaturesBloc>().add(
                  const RecipeFormFeaturesEvent.toggleActiveFeaturesState());
            }
          },
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Directionality(
              // here we forced this page's text to be ltr because of the Arabic language
              // has some issue with the FAB
              textDirection: TextDirection.ltr,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(state.isEditing
                      ? context.editTheRecipeStr
                      : context.recipeStr),
                  actions: [
                    // show the save button if state.isEditing
                    Visibility(
                      visible: state.isEditing,
                      child: IconButton(
                        onPressed: () {
                          context
                              .read<RecipeFormBloc>()
                              .add(const RecipeFormEvent.saved());
                        },
                        icon: const Icon(Icons.check),
                      ),
                    ),
                  ],
                ),
                body: Scrollbar(
                  child: ListView(
                    children: const [
                      RecipeNameField(),
                      Divider(indent: 20, endIndent: 20),
                      IngredientList(),
                      AddIngredientField(),
                      Divider(indent: 20, endIndent: 20),
                      StepsList(),
                      AddStepTile(),
                    ],
                  ),
                ),
                floatingActionButton: const RecipeFormActionsFAB(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class RecipeFormActionsFAB extends StatelessWidget {
  const RecipeFormActionsFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return BlocBuilder<RecipeFormFeaturesBloc, RecipeFormFeaturesState>(
      buildWhen: (previous, current) =>
          previous.isAnyFeatureActive != current.isAnyFeatureActive,
      builder: (context, state) {
        return SpeedDial(
          icon: state.isAnyFeatureActive ? Icons.close : Icons.menu,
          activeIcon: Icons.close,
          overlayColor: Colors.black12,
          onPress: state.isAnyFeatureActive
              ? () {
                  context.read<RecipeFormFeaturesBloc>().add(
                      const RecipeFormFeaturesEvent
                          .toggleActiveFeaturesState());
                }
              : null,
          children: [
            SpeedDialChild(
              foregroundColor: primaryColor,
              child: const Icon(Icons.edit),
              label: context.editStr,
              onTap: () {
                context
                    .read<RecipeFormFeaturesBloc>()
                    .add(const RecipeFormFeaturesEvent.toggleEditingState());
              },
            ),
            SpeedDialChild(
              foregroundColor: primaryColor,
              child: const Icon(Icons.copy),
              label: context.copyStr,
              onTap: () {
                context.read<RecipeFormFeaturesBloc>().add(
                      RecipeFormFeaturesEvent.copyRecipe(
                        context.read<RecipeFormBloc>().state.recipe,
                      ),
                    );
              },
            ),
            SpeedDialChild(
              foregroundColor: primaryColor,
              child: const Icon(Icons.check_box),
              label: context.liveCookingStr,
              onTap: () {
                context.read<RecipeFormFeaturesBloc>().add(
                    const RecipeFormFeaturesEvent.toggleLiveCookingState());
              },
            ),
          ],
        );
      },
    );
  }
}
