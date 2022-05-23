import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../application/new_recipe_form/new_recipe_form_bloc.dart';
import '../../../../../domain/recipes/value_objects.dart';

class RecipeNameField extends HookWidget {
  const RecipeNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocBuilder<NewRecipeFormBloc, NewRecipeFormState>(
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages,
      builder: (context, state) => Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
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
                .read<NewRecipeFormBloc>()
                .add(NewRecipeFormEvent.nameChanged(value)),
            validator: (_) =>
                context.read<NewRecipeFormBloc>().state.recipe.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (_) => context.cannotBeEmptyStr,
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
          )),
    );
  }
}
