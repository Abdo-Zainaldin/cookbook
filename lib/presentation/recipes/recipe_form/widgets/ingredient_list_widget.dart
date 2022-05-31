import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';
import 'package:reorderables/reorderables.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';
import '../../../../../domain/recipes/value_objects.dart';
import '../misc/recipe_items_presentation_classes.dart';

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
          (previous.showErrorMessages != current.showErrorMessages &&
              current.isCreating) ||
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
                  List<IngredientItemPrimitive> newIngredientsList =
                      context.formIngredients.iter.toList();
                  final ingredient = newIngredientsList.removeAt(oldIndex);
                  newIngredientsList.insert(newIndex, ingredient);
                  context.formIngredients =
                      newIngredientsList.toImmutableList();
                  context.read<RecipeFormBloc>().add(
                      RecipeFormEvent.ingredientsChanged(
                          context.formIngredients));
                },
                itemBuilder: (context, index) => IngredientTile(
                  key: ValueKey(formIngredients.value[index].id),
                  providerContext: context,
                  index: index,
                ),
              ),
            );
          } else {
            return ReorderableWrap(
              enableReorder: state.isEditing,
              onReorder: (oldIndex, newIndex) {
                List<IngredientItemPrimitive> newIngredientsList =
                    context.formIngredients.iter.toList();
                final ingredient = newIngredientsList.removeAt(oldIndex);
                newIngredientsList.insert(newIndex, ingredient);
                context.formIngredients = newIngredientsList.toImmutableList();
                context.read<RecipeFormBloc>().add(
                    RecipeFormEvent.ingredientsChanged(
                        context.formIngredients));
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
                              formIngredients.value = formIngredients.value
                                  .minusElement(ingredient);

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
          }
        },
      ),
    );
  }
}

class IngredientTile extends HookWidget {
  final BuildContext providerContext;
  final int index;
  const IngredientTile({
    Key? key,
    required this.providerContext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredient = providerContext.formIngredients
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
                    hintText: providerContext.addIngredientStr,
                    counterText: '',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                  maxLength: IngredientName.maxLength,
                  onChanged: (value) {
                    providerContext.formIngredients =
                        providerContext.formIngredients.map(
                      (listIngredients) => listIngredients == ingredient
                          ? ingredient.copyWith(name: value)
                          : listIngredients,
                    );
                    providerContext.read<RecipeFormBloc>().add(
                        RecipeFormEvent.ingredientsChanged(
                            providerContext.formIngredients));
                  },
                  validator: (_) => providerContext
                      .read<RecipeFormBloc>()
                      .state
                      .recipe
                      .ingredients
                      .value
                      .fold(
                        (f) => null,
                        (ingredientList) => ingredientList[index]
                            .name
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                empty: (_) => providerContext.cannotBeEmptyStr,
                                exceedingLength: (_) =>
                                    providerContext.exceedingLengthStr,
                                multiline: (_) => providerContext.multilineStr,
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    providerContext.formIngredients = providerContext
                        .formIngredients
                        .minusElement(ingredient);
                    providerContext.read<RecipeFormBloc>().add(
                        RecipeFormEvent.ingredientsChanged(
                            providerContext.formIngredients));
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
