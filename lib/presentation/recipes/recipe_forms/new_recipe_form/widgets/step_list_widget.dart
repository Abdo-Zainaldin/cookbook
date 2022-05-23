import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/new_recipe_form/widgets/add_recipe_item_widget.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/new_recipe_form/widgets/recipe_item_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/new_recipe_form/new_recipe_form_bloc.dart';
import '../../misc/recipe_items_presentation_classes.dart';

class StepsList extends StatelessWidget {
  const StepsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewRecipeFormBloc, NewRecipeFormState>(
      buildWhen: (previous, current) =>
          previous.stepItemPrimitives != current.stepItemPrimitives,
      builder: (context, state) {
        return ListView(
          children: [
            Column(
              children: List.generate(
                  state.stepItemPrimitives.size,
                  (index) => RecipeItemTextField(
                        key: ValueKey(state.stepItemPrimitives[index].id),
                        index: index,
                        recipeItemPrimitive: state.stepItemPrimitives[index],
                        itemBody: state.stepItemPrimitives[index].body,
                      )),
            ),
            AddRecipeItem(
              itemPrimitive: StepItemPrimitive.empty(),
              itemName: '# a step#',
              enable: state.stepItemPrimitives.size != ListItem.maxLength,
            ),
          ],
        );
      },
    );
  }
}
