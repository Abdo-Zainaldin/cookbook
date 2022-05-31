import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';
import '../misc/recipe_items_presentation_classes.dart';

class AddStepTile extends StatelessWidget {
  const AddStepTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecipeFormBloc, RecipeFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        context.formSteps = state.recipe.steps
            .getOrCrash()
            .map((_) => StepItemPrimitive.fromDomain(_));
      },
      buildWhen: (previous, current) =>
          previous.recipe.steps.isFull != current.recipe.steps.isFull ||
          previous.isEditing != current.isEditing,
      builder: (context, state) {
        return Visibility(
          visible: state.isEditing || state.isCreating,
          child: ListTile(
            enabled: !state.recipe.steps.isFull,
            leading: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.add),
            ),
            title: Text(context.addStepStr),
            onTap: () {
              context.formSteps =
                  context.formSteps.plusElement(StepItemPrimitive.empty());

              context
                  .read<RecipeFormBloc>()
                  .add(RecipeFormEvent.stepsChanged(context.formSteps));
            },
          ),
        );
      },
    );
  }
}
