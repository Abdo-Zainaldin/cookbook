import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/new_recipe_form/new_recipe_form_bloc.dart';
import '../../../../../domain/recipes/value_objects.dart';
import '../../misc/recipe_items_presentation_classes.dart';
import 'add_recipe_item_widget.dart';
import 'recipe_item_text_field_widget.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewRecipeFormBloc, NewRecipeFormState>(
      buildWhen: (previous, current) =>
          previous.ingredientItemPrimitives != current.ingredientItemPrimitives,
      builder: (context, state) {
        return ListView(
          children: [
            Column(
              children: List.generate(
                  state.ingredientItemPrimitives.size,
                  (index) => RecipeItemTextField(
                        key: ValueKey(state.ingredientItemPrimitives[index].id),
                        index: index,
                        recipeItemPrimitive:
                            state.ingredientItemPrimitives[index],
                        itemBody: state.ingredientItemPrimitives[index].name,
                      )),
            ),
            AddRecipeItem(
              itemPrimitive: IngredientItemPrimitive.empty(),
              itemName: '# a ingredient#',
              enable: state.ingredientItemPrimitives.size != ListItem.maxLength,
            ),
          ],
        );
      },
    );
  }
}
