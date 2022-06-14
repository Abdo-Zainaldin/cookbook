import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';
import 'package:reorderables/reorderables.dart';

import '../../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';
import 'ingredient_tile_widget.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecipeFormBloc, RecipeFormState>(
      listenWhen: (previous, current) =>
          previous.recipe.ingredients.isFull !=
              current.recipe.ingredients.isFull ||
          previous.recipe.ingredients.isMinimum !=
              current.recipe.ingredients.isMinimum ||
          previous.isSaving != current.isSaving,
      listener: (context, state) {
        if (!state.recipe.ingredients.isMinimum) {
          FlushbarHelper.createInformation(
            message: context.ingredientsListIsTooShortStr,
          ).show(context);
        }
        if (state.recipe.ingredients.isFull) {
          FlushbarHelper.createInformation(
            message: context.ingredientsListIsTooLongStr,
          ).show(context);
        }
      },
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages ||
          previous.isEditing != current.isEditing ||
          previous.recipe.ingredients.length !=
              current.recipe.ingredients.length,
      builder: (context, state) => Consumer<FormIngredients>(
        builder: (context, formIngredients, child) {
          if (state.isCreating) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ReorderableListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: formIngredients.value.size,
                onReorderStart: (index) => FocusScope.of(context).unfocus(),
                onReorder: (int oldIndex, int newIndex) {
                  if (newIndex > oldIndex) {
                    newIndex = newIndex - 1;
                  }
                  changeIngredientsOrder(context, oldIndex, newIndex);
                },
                itemBuilder: (context, index) => IngredientTile(
                  key: ValueKey(formIngredients.value[index].id),
                  providersContext: context,
                  index: index,
                ),
              ),
            );
          }
          return ReorderableWrap(
            enableReorder: state.isEditing,
            onReorder: (oldIndex, newIndex) {
              changeIngredientsOrder(context, oldIndex, newIndex);
            },
            children: List.generate(
              formIngredients.value.size,
              (index) {
                final ingredient = formIngredients.value[index];
                return Padding(
                  key: ValueKey(formIngredients.value[index].id),
                  padding: const EdgeInsets.all(4.0),
                  child: Chip(
                    label: Text(ingredient.name),
                    onDeleted: state.isEditing
                        ? () {
                            formIngredients.value =
                                formIngredients.value.minusElement(ingredient);

                            context.read<RecipeFormBloc>().add(
                                  RecipeFormEvent.ingredientsChanged(
                                      formIngredients.value),
                                );
                          }
                        : null,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  void changeIngredientsOrder(
      BuildContext context, int oldIndex, int newIndex) {
    List<IngredientItemPrimitive> newIngredientsList =
        context.formIngredients.iter.toList();
    final ingredient = newIngredientsList.removeAt(oldIndex);
    newIngredientsList.insert(newIndex, ingredient);
    context.formIngredients = newIngredientsList.toImmutableList();
    context
        .read<RecipeFormBloc>()
        .add(RecipeFormEvent.ingredientsChanged(context.formIngredients));
  }
}
