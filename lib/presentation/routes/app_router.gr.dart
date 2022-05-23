// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/recipes/recipe.dart' as _i8;
import '../recipes/recipe_forms/new_recipe_form/new_recipe_form_page.dart'
    as _i4;
import '../recipes/recipe_forms/recipe_form/recipe_form_page.dart' as _i5;
import '../recipes/recipes_overview/recipe_overview_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RecipeOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RecipeOverviewPage());
    },
    NewRecipeFormPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i4.NewRecipeFormPage(),
          fullscreenDialog: true);
    },
    RecipeFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeFormPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.RecipeFormPage(
              key: args.key, initialRecipe: args.initialRecipe));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(RecipeOverviewPageRoute.name,
            path: '/recipe-overview-page'),
        _i6.RouteConfig(NewRecipeFormPageRoute.name,
            path: '/new-recipe-form-page'),
        _i6.RouteConfig(RecipeFormPageRoute.name, path: '/recipe-form-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RecipeOverviewPage]
class RecipeOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const RecipeOverviewPageRoute()
      : super(RecipeOverviewPageRoute.name, path: '/recipe-overview-page');

  static const String name = 'RecipeOverviewPageRoute';
}

/// generated route for
/// [_i4.NewRecipeFormPage]
class NewRecipeFormPageRoute extends _i6.PageRouteInfo<void> {
  const NewRecipeFormPageRoute()
      : super(NewRecipeFormPageRoute.name, path: '/new-recipe-form-page');

  static const String name = 'NewRecipeFormPageRoute';
}

/// generated route for
/// [_i5.RecipeFormPage]
class RecipeFormPageRoute extends _i6.PageRouteInfo<RecipeFormPageRouteArgs> {
  RecipeFormPageRoute({_i7.Key? key, required _i8.Recipe initialRecipe})
      : super(RecipeFormPageRoute.name,
            path: '/recipe-form-page',
            args: RecipeFormPageRouteArgs(
                key: key, initialRecipe: initialRecipe));

  static const String name = 'RecipeFormPageRoute';
}

class RecipeFormPageRouteArgs {
  const RecipeFormPageRouteArgs({this.key, required this.initialRecipe});

  final _i7.Key? key;

  final _i8.Recipe initialRecipe;

  @override
  String toString() {
    return 'RecipeFormPageRouteArgs{key: $key, initialRecipe: $initialRecipe}';
  }
}
