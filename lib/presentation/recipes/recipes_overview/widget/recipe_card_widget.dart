import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:cookbook_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/recipe/recipe_actor/recipe_actor_bloc.dart';
import '../../../../application/settings/settings_bloc.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(RecipeFormPageRoute(initialRecipe: recipe));
      },
      onLongPress: () {
        final recipeActorBloc = context.read<RecipeActorBloc>();
        showDeletionDialog(context, recipeActorBloc);
      },
      child: Card(
          child: ListTile(
        title: Text(recipe.name.getOrCrash()),
      )),
    );
  }

  void showDeletionDialog(
    BuildContext context,
    RecipeActorBloc recipeActorBloc,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.selectedRecipeStr),
          content: Text(recipe.name.getOrCrash()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(context.cancelStr),
            ),
            TextButton.icon(
              onPressed: () {
                recipeActorBloc.add(
                  RecipeActorEvent.deleted(
                    recipe,
                    isLocalDB: context
                        .read<SettingsBloc>()
                        .state
                        .settings
                        .isUsingLocalRecipes,
                  ),
                );
                Navigator.pop(context);
              },
              icon: const Icon(Icons.delete),
              label: Text(context.deleteStr),
            ),
          ],
        );
      },
    );
  }
}
