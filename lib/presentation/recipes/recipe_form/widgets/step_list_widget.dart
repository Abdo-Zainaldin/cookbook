import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';

class StepsList extends StatelessWidget {
  const StepsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  List<StepItemPrimitive> newStepsList =
                      context.formSteps.iter.toList();
                  final step = newStepsList.removeAt(oldIndex);
                  newStepsList.insert(newIndex, step);
                  context.formSteps = newStepsList.toImmutableList();
                  context
                      .read<RecipeFormBloc>()
                      .add(RecipeFormEvent.stepsChanged(context.formSteps));
                },
                itemBuilder: (context, index) => StepTile(
                  key: ValueKey(formSteps.value[index].id),
                  providerContext: context,
                  index: index,
                ),
              ),
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                formSteps.value.size,
                (index) {
                  return ListTile(
                    key: ValueKey(formSteps.value[index].id),
                    title: Text('${index + 1}  ${formSteps.value[index].body}'),
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

class StepTile extends HookWidget {
  final BuildContext providerContext;
  final int index;
  const StepTile({
    Key? key,
    required this.providerContext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final step = providerContext.formSteps
        .getOrElse(index, (_) => StepItemPrimitive.empty());
    final textEditingController = useTextEditingController(text: step.body);

    return Slidable(
      enabled: !providerContext.read<RecipeFormBloc>().state.isCreating,
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.20,
        children: [
          SlidableAction(
            label: providerContext.deleteStr,
            icon: Icons.delete,
            backgroundColor: Theme.of(providerContext).errorColor,
            onPressed: (_) {
              providerContext.formSteps =
                  providerContext.formSteps.minusElement(step);
              providerContext
                  .read<RecipeFormBloc>()
                  .add(RecipeFormEvent.stepsChanged(providerContext.formSteps));
            },
          ),
        ],
      ),
      child: Padding(
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
                      hintText: providerContext.stepStr,
                      counterText: '',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    maxLength: StepBody.maxLength,
                    onChanged: (value) {
                      providerContext.formSteps = providerContext.formSteps.map(
                        (listStep) => listStep == step
                            ? step.copyWith(body: value)
                            : listStep,
                      );
                      providerContext.read<RecipeFormBloc>().add(
                          RecipeFormEvent.stepsChanged(
                              providerContext.formSteps));
                    },
                    validator: (_) {
                      try {
                        return providerContext
                            .read<RecipeFormBloc>()
                            .state
                            .recipe
                            .steps
                            .value
                            .fold(
                          (f) => null,
                          (stepList) {
                            return stepList[index].body.value.fold(
                                  (f) => f.maybeMap(
                                    empty: (_) =>
                                        providerContext.cannotBeEmptyStr,
                                    exceedingLength: (_) =>
                                        providerContext.exceedingLengthStr,
                                    multiline: (_) =>
                                        providerContext.multilineStr,
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                );
                          },
                        );
                      } catch (e) {
                        log(e.toString());
                        return null;
                      }
                    },
                  ),
                ),
                if (providerContext.read<RecipeFormBloc>().state.isCreating)
                  IconButton(
                    onPressed: () {
                      providerContext.formSteps =
                          providerContext.formSteps.minusElement(step);
                      providerContext.read<RecipeFormBloc>().add(
                          RecipeFormEvent.stepsChanged(
                              providerContext.formSteps));
                    },
                    icon: const Icon(Icons.close),
                  ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.drag_handle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
