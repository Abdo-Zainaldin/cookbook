import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';
import '../../misc/recipe_items_presentation_classes.dart';

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
      buildWhen: (previous, current) => previous.isEditing != current.isEditing,
      builder: (context, state) => Consumer(
        builder: (context, FormIngredients formIngredients, child) {
          return Wrap(
            children: List.generate(
              formIngredients.value.size,
              (index) {
                final ingredient = formIngredients.value[index];
                return Padding(
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
}
