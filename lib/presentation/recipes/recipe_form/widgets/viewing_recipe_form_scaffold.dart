import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/recipe_form/recipe_form_bloc.dart';

import 'add_ingredient_field_widget.dart';
import 'add_step_tile_widget.dart';
import 'ingredient_list_widget.dart';
import 'recipe_name_field_widget.dart';
import 'step_list_widget.dart';

class ViewingRecipeFormScaffold extends StatelessWidget {
  const ViewingRecipeFormScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<RecipeFormBloc, RecipeFormState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(
                state.isEditing ? context.editTheRecipeStr : context.recipeStr);
          },
        ),
        actions: [
          BlocBuilder<RecipeFormBloc, RecipeFormState>(
            buildWhen: (previous, current) =>
                previous.isEditing != current.isEditing,
            builder: (context, state) {
              return Visibility(
                visible: state.isEditing,
                child: IconButton(
                  onPressed: () {
                    context
                        .read<RecipeFormBloc>()
                        .add(const RecipeFormEvent.saved());
                  },
                  icon: const Icon(Icons.check),
                ),
              );
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: ListView(children: const [
          RecipeNameField(),
          Divider(indent: 20, endIndent: 20),
          IngredientList(),
          AddIngredientField(),
          Divider(indent: 20, endIndent: 20),
          StepsList(),
          AddStepTile(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context
              .read<RecipeFormBloc>()
              .add(const RecipeFormEvent.editingModeOnOff()),
          child: const Icon(Icons.edit)),
    );
  }
}
