import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/injection.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/new_recipe_form/widgets/ingredient_list_widget.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/new_recipe_form/widgets/recipe_name_field_widget.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/new_recipe_form/widgets/step_list_widget.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/recipe_form/recipe_form_page.dart';
import 'package:cookbook_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/new_recipe_form/new_recipe_form_bloc.dart';

class NewRecipeFormPage extends StatelessWidget {
  const NewRecipeFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<NewRecipeFormBloc>(),
        child: BlocConsumer<NewRecipeFormBloc, NewRecipeFormState>(
          listenWhen: (previous, current) =>
              previous.saveFailureOrSuccessOption !=
                  current.saveFailureOrSuccessOption ||
              previous.isSaving != current.isSaving,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => FlushbarHelper.createError(
                    message: failure.map(
                  unexpected: (_) => '#',
                  insufficientPermission: (_) => '#',
                  unableToUpdate: (_) => '#',
                )),
                (_) {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(RecipeOverviewPageRoute.name);
                  AutoRouter.of(context).push(RecipeFormPageRoute(
                      initialRecipe:
                          context.read<NewRecipeFormBloc>().state.recipe));
                },
              ),
            );
          },
          buildWhen: (previous, current) =>
              previous.isSaving != current.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                SavingProgressOverlay(isSaving: state.isSaving),
                const NewRecipeFormPageScaffold(),
              ],
            );
          },
        ));
  }
}

class NewRecipeFormPageScaffold extends HookWidget {
  const NewRecipeFormPageScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readyToSave = useState(false);
    final selectedPageIndex = useState(0);
    final pageController = PageController(initialPage: 0);

    List<Widget> pages = [
      const RecipeNameField(),
      const IngredientList(),
      const StepsList(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a recipe'),
      ),
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (page) {
          selectedPageIndex.value = page;

          if (selectedPageIndex.value == pages.length - 1) {
            readyToSave.value = true;
          }
        },
      ),
      floatingActionButton: readyToSave.value
          ? FloatingActionButton(
              onPressed: () {
                context
                    .read<NewRecipeFormBloc>()
                    .add(const NewRecipeFormEvent.saved());
              },
              child: const Icon(Icons.check),
            )
          : null,
    );
  }
}
