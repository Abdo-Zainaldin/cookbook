import 'package:cookbook_app/presentation/recipes/recipe_forms/misc/recipe_items_presentation_classes.dart';
import 'package:flutter/material.dart';

import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

extension FormRecipeItemsX on BuildContext {
  KtList<IngredientItemPrimitive> get formIngredients =>
      Provider.of<FormIngredients>(this, listen: false).value;
  set formIngredients(KtList<IngredientItemPrimitive> value) =>
      Provider.of<FormIngredients>(this, listen: false).value = value;

  KtList<StepItemPrimitive> get formSteps =>
      Provider.of<FormSteps>(this, listen: false).value;
  set formSteps(KtList<StepItemPrimitive> value) =>
      Provider.of<FormSteps>(this, listen: false).value = value;
}
