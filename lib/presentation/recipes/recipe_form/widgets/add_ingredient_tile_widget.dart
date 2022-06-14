import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';

class AddIngredientTile extends StatelessWidget {
  const AddIngredientTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeFormBloc, RecipeFormState>(
      buildWhen: (previous, current) =>
          previous.recipe.ingredients.isFull !=
              current.recipe.ingredients.isFull ||
          previous.isEditing != current.isEditing,
      builder: (context, state) {
        return Visibility(
          visible: state.isEditing || state.isCreating,
          child: ListTile(
            enabled: !state.recipe.ingredients.isFull,
            leading: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.add),
            ),
            title: Text(context.addIngredientStr),
            onTap: () {
              context.formIngredients = context.formIngredients
                  .plusElement(IngredientItemPrimitive.empty());

              context.read<RecipeFormBloc>().add(
                  RecipeFormEvent.ingredientsChanged(context.formIngredients));
            },
          ),
        );
      },
    );
  }
}
