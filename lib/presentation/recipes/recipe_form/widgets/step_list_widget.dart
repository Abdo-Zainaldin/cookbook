import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/widgets/step_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';

import '../../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../../../../application/recipe/recipe_form/recipe_form_features/recipe_form_features_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';

class StepsList extends HookWidget {
  const StepsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // generate check boxes for live cooking feature mode
    final checkboxes = useState<List<bool>>(
        List.from(List.generate(ListItem.maxLength, (_) => false)));

    return BlocConsumer<RecipeFormBloc, RecipeFormState>(
      listenWhen: (previous, current) =>
          previous.recipe.steps.isFull != current.recipe.steps.isFull ||
          previous.recipe.steps.isMinimum != current.recipe.steps.isMinimum ||
          previous.isSaving != current.isSaving,
      listener: (context, state) {
        if (!state.recipe.steps.isMinimum) {
          FlushbarHelper.createInformation(
            message: context.stepsListIsTooShortStr,
          ).show(context);
        }
        if (state.recipe.steps.isFull) {
          FlushbarHelper.createInformation(
            message: context.stepsListIsTooLongStr,
          ).show(context);
        }
      },
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages ||
          previous.isEditing != current.isEditing ||
          previous.recipe.steps != current.recipe.steps,
      builder: (context, state) => Consumer<FormSteps>(
        builder: (context, formSteps, child) {
          if (state.isCreating || state.isEditing) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ReorderableListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: formSteps.value.size,
                onReorderStart: (index) => FocusScope.of(context).unfocus(),
                onReorder: (int oldIndex, int newIndex) {
                  if (newIndex > oldIndex) {
                    newIndex = newIndex - 1;
                  }
                  changeStepsOrder(context, oldIndex, newIndex);
                },
                itemBuilder: (context, index) => StepTile(
                  key: ValueKey(formSteps.value[index].id),
                  providersContext: context,
                  index: index,
                ),
              ),
            );
          }
          return BlocBuilder<RecipeFormFeaturesBloc, RecipeFormFeaturesState>(
            buildWhen: (previous, current) =>
                previous.isAnyFeatureActive != current.isAnyFeatureActive,
            builder: (context, recipeFormFeaturesState) {
              return ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: formSteps.value.size,
                itemBuilder: (BuildContext context, int index) {
                  // if live cooking feature is active, show steps tiles with checkboxes
                  return recipeFormFeaturesState.isLiveCooking
                      ? CheckboxListTile(
                          key: ValueKey(formSteps.value[index].id),
                          title: Text(
                              '${index + 1} - ${formSteps.value[index].body}'),
                          activeColor: Theme.of(context).colorScheme.primary,
                          value: checkboxes.value[index],
                          onChanged: (_) {
                            List<bool> newCheckBoxes =
                                List.from(checkboxes.value);
                            newCheckBoxes[index] = !newCheckBoxes[index];
                            checkboxes.value = newCheckBoxes;
                          },
                        )
                      : ListTile(
                          key: ValueKey(formSteps.value[index].id),
                          title: Text(
                              '${index + 1} - ${formSteps.value[index].body}'),
                        );
                },
              );
            },
          );
        },
      ),
    );
  }

  void changeStepsOrder(BuildContext context, int oldIndex, int newIndex) {
    List<StepItemPrimitive> newStepsList = context.formSteps.iter.toList();
    final step = newStepsList.removeAt(oldIndex);
    newStepsList.insert(newIndex, step);
    context.formSteps = newStepsList.toImmutableList();
    context
        .read<RecipeFormBloc>()
        .add(RecipeFormEvent.stepsChanged(context.formSteps));
  }
}
