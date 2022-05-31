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
import '../recipes/recipe_form/recipe_form_page.dart' as _i4;
import '../recipes/recipes_overview/recipes_filter_page.dart' as _i5;
import '../recipes/recipes_overview/recipes_overview_page.dart' as _i3;
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
    RecipeOverviewPageWraperRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RecipeOverviewPageWraper());
    },
    RecipesOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RecipesOverviewPage());
    },
    RecipeFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeFormPageRouteArgs>(
          orElse: () => const RecipeFormPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.RecipeFormPage(
              key: args.key, initialRecipe: args.initialRecipe),
          fullscreenDialog: true);
    },
    RecipesFilterPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RecipesFilterPage(),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(RecipeOverviewPageWraperRoute.name,
            path: '/recipe-overview-page-wraper',
            children: [
              _i6.RouteConfig(RecipesOverviewPageRoute.name,
                  path: 'recipes-overview-page',
                  parent: RecipeOverviewPageWraperRoute.name),
              _i6.RouteConfig(RecipeFormPageRoute.name,
                  path: 'recipe-form-page',
                  parent: RecipeOverviewPageWraperRoute.name),
              _i6.RouteConfig(RecipesFilterPageRoute.name,
                  path: 'recipes-filter-page',
                  parent: RecipeOverviewPageWraperRoute.name)
            ])
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
/// [_i3.RecipeOverviewPageWraper]
class RecipeOverviewPageWraperRoute extends _i6.PageRouteInfo<void> {
  const RecipeOverviewPageWraperRoute({List<_i6.PageRouteInfo>? children})
      : super(RecipeOverviewPageWraperRoute.name,
            path: '/recipe-overview-page-wraper', initialChildren: children);

  static const String name = 'RecipeOverviewPageWraperRoute';
}

/// generated route for
/// [_i3.RecipesOverviewPage]
class RecipesOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const RecipesOverviewPageRoute()
      : super(RecipesOverviewPageRoute.name, path: 'recipes-overview-page');

  static const String name = 'RecipesOverviewPageRoute';
}

/// generated route for
/// [_i4.RecipeFormPage]
class RecipeFormPageRoute extends _i6.PageRouteInfo<RecipeFormPageRouteArgs> {
  RecipeFormPageRoute({_i7.Key? key, _i8.Recipe? initialRecipe})
      : super(RecipeFormPageRoute.name,
            path: 'recipe-form-page',
            args: RecipeFormPageRouteArgs(
                key: key, initialRecipe: initialRecipe));

  static const String name = 'RecipeFormPageRoute';
}

class RecipeFormPageRouteArgs {
  const RecipeFormPageRouteArgs({this.key, this.initialRecipe});

  final _i7.Key? key;

  final _i8.Recipe? initialRecipe;

  @override
  String toString() {
    return 'RecipeFormPageRouteArgs{key: $key, initialRecipe: $initialRecipe}';
  }
}

/// generated route for
/// [_i5.RecipesFilterPage]
class RecipesFilterPageRoute extends _i6.PageRouteInfo<void> {
  const RecipesFilterPageRoute()
      : super(RecipesFilterPageRoute.name, path: 'recipes-filter-page');

  static const String name = 'RecipesFilterPageRoute';
}
