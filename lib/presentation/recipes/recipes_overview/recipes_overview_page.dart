import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cookbook_app/presentation/recipes/recipes_overview/widget/recipes_overview_body_widget.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/recipe/recipe_filter/recipe_filter_bloc.dart';
import '../../../application/recipe/recipe_watcher/recipe_watcher_bloc.dart';
import '../../routes/app_router.gr.dart';

class RecipesOverviewPage extends StatelessWidget {
  const RecipesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.recipesStr),
        leading: IconButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signOut());
          },
          icon: const Icon(Icons.logout),
        ),
        actions: [
          // if the recipes was received successfully. in such case,
          // pase the recipes to the RecipeFilterBloc and show the recipes filter button
          context.watch<RecipeWatcherBloc>().state.maybeMap(
              loadSuccess: (state) {
                context.read<RecipeFilterBloc>().add(
                      RecipeFilterEvent.initialRecipesChanged(state.recipes),
                    );
                return IconButton(
                  onPressed: () {
                    context.router.push(const RecipesFilterPageRoute());
                  },
                  icon: const Icon(Icons.filter_list_outlined),
                );
              },
              orElse: () => const SizedBox.shrink()),
          IconButton(
              onPressed: () {
                context.router.push(const SettingsPageRoute());
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(RecipeFormPageRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: const RecipeOverviewBody(),
    );
  }
}
