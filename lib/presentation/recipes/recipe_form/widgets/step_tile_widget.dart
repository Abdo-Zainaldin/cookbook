import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../application/recipe/recipe_form/recipe_form_bloc.dart';
import '../../../../domain/recipes/value_objects.dart';
import '../misc/recipe_items_presentation_classes.dart';

class StepTile extends HookWidget {
  // we use this provided context
  // because when using ReorderableListView we lose the scope of the providers
  final BuildContext providersContext;
  final int index;
  const StepTile({
    Key? key,
    required this.providersContext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final step = providersContext.formSteps
        .getOrElse(index, (_) => StepItemPrimitive.empty());
    final textEditingController = useTextEditingController(text: step.body);

    // if the state.isEditing we enable the slidable widget to perform with deletion action
    return Slidable(
      enabled: providersContext.read<RecipeFormBloc>().state.isEditing,
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.20,
        children: [
          SlidableAction(
            label: providersContext.deleteStr,
            icon: Icons.delete,
            backgroundColor: Theme.of(providersContext).colorScheme.error,
            onPressed: (_) {
              providersContext.formSteps =
                  providersContext.formSteps.minusElement(step);
              providersContext.read<RecipeFormBloc>().add(
                  RecipeFormEvent.stepsChanged(providersContext.formSteps));
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
                      hintText: providersContext.stepStr,
                      counterText: '',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    maxLength: StepBody.maxLength,
                    onChanged: (value) {
                      providersContext.formSteps =
                          providersContext.formSteps.map(
                        (listStep) => listStep == step
                            ? step.copyWith(body: value)
                            : listStep,
                      );
                      providersContext.read<RecipeFormBloc>().add(
                          RecipeFormEvent.stepsChanged(
                              providersContext.formSteps));
                    },
                    validator: (_) {
                      if (index >= providersContext.formSteps.size) {
                        return null;
                      }
                      return providersContext
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
                                      providersContext.cannotBeEmptyStr,
                                  exceedingLength: (_) =>
                                      providersContext.exceedingLengthStr,
                                  multiline: (_) =>
                                      providersContext.multilineStr,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                      );
                    },
                  ),
                ),
                if (providersContext.read<RecipeFormBloc>().state.isCreating)
                  IconButton(
                    onPressed: () {
                      providersContext.formSteps =
                          providersContext.formSteps.minusElement(step);
                      providersContext.read<RecipeFormBloc>().add(
                          RecipeFormEvent.stepsChanged(
                              providersContext.formSteps));
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
