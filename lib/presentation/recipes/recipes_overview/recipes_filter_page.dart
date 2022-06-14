import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/recipe/recipe_filter/recipe_filter_bloc.dart';
import '../../../application/recipe/recipe_watcher/recipe_watcher_bloc.dart';
import 'widget/recipe_card_widget.dart';

class RecipesFilterPage extends StatelessWidget {
  const RecipesFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.recipesFilterStr),
      ),
      body: BlocConsumer<RecipeWatcherBloc, RecipeWatcherState>(
        listener: (context, state) {
          state.maybeMap(
              loadSuccess: (state) {
                // if any changes occurred to the recipes notify the RecipeFilterBloc
                context.read<RecipeFilterBloc>().add(
                    RecipeFilterEvent.initialRecipesChanged(state.recipes));
              },
              // if there was critical failure pop until recipesOverviewPage route
              loadFailure: (_) => context.router.popUntilRoot(),
              orElse: () {});
        },
        builder: (context, state) {
          return state.map(
            initial: (state) => Container(),
            loadInProgress: (state) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return BlocBuilder<RecipeFilterBloc, RecipeFilterState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(context.recipesFilterInfoTitleStr),
                          subtitle: Text(context.recipesFilterInfoStr),
                        ),
                        const FilterBody(),
                        ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.filteredRecipes.size,
                          itemBuilder: (BuildContext context, int index) {
                            final recipe = state.filteredRecipes[index];
                            return RecipeCard(recipe: recipe);
                          },
                        )
                      ],
                    ),
                  );
                },
              );
            },
            // This is an impossible case because we're catching it above in the listener
            loadFailure: (state) => Container(),
          );
        },
      ),
    );
  }
}

class FilterBody extends HookWidget {
  const FilterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocBuilder<RecipeFilterBloc, RecipeFilterState>(
      buildWhen: (previous, current) =>
          previous.filterIngdredients != current.filterIngdredients,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: List.generate(
                  state.filterIngdredients.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: Chip(
                      label: Text(state.filterIngdredients[index]),
                      onDeleted: () {
                        List<String> newfilterIngredients =
                            List.from(state.filterIngdredients);
                        newfilterIngredients.removeAt(index);
                        context.read<RecipeFilterBloc>().add(
                            RecipeFilterEvent.filterIngredientsChanged(
                                newfilterIngredients));
                      },
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: textEditingController,
                onFieldSubmitted: (_) {
                  List<String> newfilterIngredients =
                      List.from(state.filterIngdredients);
                  newfilterIngredients.add(textEditingController.text);
                  context.read<RecipeFilterBloc>().add(
                      RecipeFilterEvent.filterIngredientsChanged(
                          newfilterIngredients));
                  textEditingController.text = '';
                },
              )
            ],
          ),
        );
      },
    );
  }
}
