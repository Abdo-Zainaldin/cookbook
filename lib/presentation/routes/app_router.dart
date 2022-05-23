import 'package:auto_route/annotations.dart';
import 'package:cookbook_app/presentation/recipes/recipes_overview/recipe_overview_page.dart';

import '../recipes/recipe_forms/new_recipe_form/new_recipe_form_page.dart';
import '../recipes/recipe_forms/recipe_form/recipe_form_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignInPage),
  AutoRoute(page: RecipeOverviewPage),
  AutoRoute(page: NewRecipeFormPage, fullscreenDialog: true),
  AutoRoute(page: RecipeFormPage),
])
class $AppRouter {}
