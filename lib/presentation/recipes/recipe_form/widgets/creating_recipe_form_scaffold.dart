import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/application/recipe_form/recipe_form_bloc.dart';
import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:cookbook_app/presentation/recipes/recipe_form/misc/build_context_x.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/recipes/value_objects.dart';
import '../../../routes/app_router.gr.dart';
import '../misc/recipe_items_presentation_classes.dart';
import 'add_ingredient_tile_widget.dart';
import 'add_step_tile_widget.dart';
import 'ingredient_list_widget.dart';
import 'recipe_name_field_widget.dart';
import 'step_list_widget.dart';

class CreatingRecipeFormScaffold extends HookWidget {
  const CreatingRecipeFormScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readyToSave = useState(false);
    final selectedPageIndex = useState(0);
    final pageController = PageController(initialPage: 0);
    final swipeIconColor = Colors.grey.withOpacity(.1);

    List<Widget> pages = [
      Stack(
        children: [
          const RecipeNameField(),
          Center(
            child: Icon(
              Icons.swipe_right,
              color: swipeIconColor,
              size: 100,
            ),
          ),
        ],
      ),
      Stack(
        children: [
          Column(
            children: const [
              Expanded(child: IngredientList()),
              AddIngredientTile(),
            ],
          ),
          Center(
            child: Icon(
              Icons.swipe,
              color: swipeIconColor,
              size: 100,
            ),
          ),
        ],
      ),
      Stack(
        children: [
          Column(
            children: const [
              Expanded(child: StepsList()),
              AddStepTile(),
            ],
          ),
          Center(
            child: Icon(
              Icons.swipe_left,
              color: swipeIconColor,
              size: 100,
            ),
          ),
        ],
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(context.createRecipeStr),
      ),
      body: BlocListener<RecipeFormBloc, RecipeFormState>(
        listenWhen: (previous, current) =>
            previous.creatingRecipePageIndex !=
                    current.creatingRecipePageIndex &&
                selectedPageIndex.value == 0 ||
            previous.isCreating == current.isCreating &&
                (context.formIngredients.isEmpty() ||
                    context.formSteps.isEmpty()),
        listener: (context, state) {
          if (context.formIngredients.isEmpty()) {
            context.formIngredients = KtList.from(List.generate(
                ListItem.minLength,
                (index) => IngredientItemPrimitive.empty()));
          }
          if (context.formSteps.isEmpty()) {
            context.formSteps = KtList.from(List.generate(
                ListItem.minLength, (index) => StepItemPrimitive.empty()));
          }
          if (selectedPageIndex.value == 0) {
            pageController.animateToPage(
              state.creatingRecipePageIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          }
        },
        child: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: (page) {
            selectedPageIndex.value = page;

            if (selectedPageIndex.value == pages.length - 1) {
              readyToSave.value = true;
            }

            context.read<RecipeFormBloc>().add(
                RecipeFormEvent.creatingRecipePageIngdexChanged(
                    selectedPageIndex.value));
          },
        ),
      ),
      floatingActionButton: readyToSave.value
          ? BlocListener<RecipeFormBloc, RecipeFormState>(
              listenWhen: (previous, current) =>
                  previous.successfullySaved != current.successfullySaved,
              listener: (context, state) {
                if (state.successfullySaved) {
                  AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(
                    RecipeFormPageRoute(
                      initialRecipe: state.recipe,
                    ),
                  );
                }
              },
              child: FloatingActionButton(
                onPressed: () {
                  context
                      .read<RecipeFormBloc>()
                      .add(const RecipeFormEvent.saved());
                },
                child: const Icon(Icons.check),
              ),
            )
          : null,
    );
  }
}
