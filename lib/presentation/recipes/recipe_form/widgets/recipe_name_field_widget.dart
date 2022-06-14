import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../application/recipe/recipe_form/recipe_form_bloc.dart';

class RecipeNameField extends HookWidget {
  const RecipeNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocBuilder<RecipeFormBloc, RecipeFormState>(
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages ||
          previous.isEditing != current.isEditing,
      builder: (context, state) {
        textEditingController.text =
            state.recipe.name.isValid() ? state.recipe.name.getOrCrash() : '';
        return Padding(
            padding: const EdgeInsets.all(10),
            child: !state.isEditing && !state.isCreating
                ? ListTile(
                    title: Text(textEditingController.text),
                  )
                : TextFormField(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      labelText: context.recipeNameStr,
                      counterText: '',
                    ),
                    maxLength: RecipeName.maxLength,
                    onChanged: (value) => context
                        .read<RecipeFormBloc>()
                        .add(RecipeFormEvent.nameChanged(value)),
                    validator: (_) => context
                        .read<RecipeFormBloc>()
                        .state
                        .recipe
                        .name
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            empty: (_) => context.cannotBeEmptyStr,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ));
      },
    );
  }
}
