import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';

import '../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../../../../domain/recipes/value_objects.dart';
import '../misc/recipe_items_presentation_classes.dart';

class IngredientTile extends HookWidget {
  // we use this provided context
  // because when using ReorderableListView we lose the scope of the providers
  final BuildContext providersContext;
  final int index;
  const IngredientTile({
    Key? key,
    required this.providersContext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredient = providersContext.formIngredients
        .getOrElse(index, (_) => IngredientItemPrimitive.empty());

    final textEditingController =
        useTextEditingController(text: ingredient.name);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Material(
        borderRadius: BorderRadiusDirectional.circular(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('${index + 1}'),
              ),
              Flexible(
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: providersContext.addIngredientStr,
                    counterText: '',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                  maxLength: IngredientName.maxLength,
                  onChanged: (value) {
                    providersContext.formIngredients =
                        providersContext.formIngredients.map(
                      (listIngredients) => listIngredients == ingredient
                          ? ingredient.copyWith(name: value)
                          : listIngredients,
                    );
                    providersContext.read<RecipeFormBloc>().add(
                        RecipeFormEvent.ingredientsChanged(
                            providersContext.formIngredients));
                  },
                  validator: (_) {
                    if (index >= providersContext.formIngredients.size) {
                      return null;
                    }
                    return providersContext
                        .read<RecipeFormBloc>()
                        .state
                        .recipe
                        .ingredients
                        .value
                        .fold(
                      (f) => null,
                      (ingredientList) {
                        return ingredientList[index].name.value.fold(
                              (f) => f.maybeMap(
                                empty: (_) => providersContext.cannotBeEmptyStr,
                                exceedingLength: (_) =>
                                    providersContext.exceedingLengthStr,
                                multiline: (_) => providersContext.multilineStr,
                                orElse: () => null,
                              ),
                              (_) => null,
                            );
                      },
                    );
                  },
                ),
              ),
              IconButton(
                  onPressed: () {
                    providersContext.formIngredients = providersContext
                        .formIngredients
                        .minusElement(ingredient);
                    providersContext.read<RecipeFormBloc>().add(
                        RecipeFormEvent.ingredientsChanged(
                            providersContext.formIngredients));
                  },
                  icon: const Icon(Icons.close)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.drag_handle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
