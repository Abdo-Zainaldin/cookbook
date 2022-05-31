import 'package:auto_route/annotations.dart';

import '../recipes/recipe_form/recipe_form_page.dart';
import '../recipes/recipes_overview/recipes_overview_page.dart';
import '../recipes/recipes_overview/recipes_filter_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(
      page: RecipeOverviewPageWraper,
      children: [
        AutoRoute(page: RecipesOverviewPage),
        AutoRoute(page: RecipeFormPage, fullscreenDialog: true),
        AutoRoute(page: RecipesFilterPage, fullscreenDialog: true),
      ],
    ),
  ],
)
class $AppRouter {}
