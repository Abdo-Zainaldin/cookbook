import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';
import '../../misc/recipe_items_presentation_classes.dart';

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
          previous.recipe.steps.length != current.recipe.steps.length,
      builder: (context, state) => Consumer<FormSteps>(
        builder: (context, formSteps, child) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                formSteps.value.size,
                (index) => StepTile(
                  key: ValueKey(context.formSteps[index].id),
                  index: index,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StepTile extends HookWidget {
  final int index;
  const StepTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final step =
        context.formSteps.getOrElse(index, (_) => StepItemPrimitive.empty());
    final textEditingController = useTextEditingController(text: step.body);

    return Container(
      child: context.read<RecipeFormBloc>().state.isEditing
          ? Slidable(
              endActionPane: ActionPane(
                motion: const DrawerMotion(),
                extentRatio: 0.20,
                children: [
                  SlidableAction(
                    label: context.deleteStr,
                    icon: Icons.delete,
                    backgroundColor: Theme.of(context).errorColor,
                    onPressed: (_) {
                      context.formSteps = context.formSteps.minusElement(step);
                      context
                          .read<RecipeFormBloc>()
                          .add(RecipeFormEvent.stepsChanged(context.formSteps));
                    },
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                              hintText: context.stepStr,
                              counterText: '',
                              border: InputBorder.none,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            maxLength: StepBody.maxLength,
                            onChanged: (value) {
                              context.formSteps = context.formSteps.map(
                                (listStep) => listStep == step
                                    ? step.copyWith(body: value)
                                    : listStep,
                              );
                              context.read<RecipeFormBloc>().add(
                                  RecipeFormEvent.stepsChanged(
                                      context.formSteps));
                            },
                            validator: (_) => context
                                .read<RecipeFormBloc>()
                                .state
                                .recipe
                                .steps
                                .value
                                .fold(
                                  (f) => null,
                                  (stepList) => stepList[index].body.value.fold(
                                        (f) => f.maybeMap(
                                          empty: (_) =>
                                              context.cannotBeEmptyStr,
                                          exceedingLength: (_) =>
                                              context.exceedingLengthStr,
                                          multiline: (_) =>
                                              context.multilineStr,
                                          orElse: () => null,
                                        ),
                                        (_) => null,
                                      ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : ListTile(
              title: Text('${index + 1}  ${step.body}'),
            ),
    );
  }
}
