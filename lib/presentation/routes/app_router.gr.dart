// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/recipes/recipe.dart' as _i10;
import '../recipes/recipe_form/recipe_form_page.dart' as _i5;
import '../recipes/recipe_pages_wraper.dart' as _i3;
import '../recipes/recipes_overview/recipes_filter_page.dart' as _i6;
import '../recipes/recipes_overview/recipes_overview_page.dart' as _i4;
import '../settings/settings_page.dart' as _i7;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RecipePagesWraperRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RecipePagesWraper());
    },
    RecipesOverviewPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RecipesOverviewPage());
    },
    RecipeFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeFormPageRouteArgs>(
          orElse: () => const RecipeFormPageRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.RecipeFormPage(
              key: args.key, initialRecipe: args.initialRecipe),
          fullscreenDialog: true);
    },
    RecipesFilterPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i6.RecipesFilterPage(),
          fullscreenDialog: true);
    },
    SettingsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SettingsPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashPageRoute.name, path: '/'),
        _i8.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(RecipePagesWraperRoute.name,
            path: '/recipe-pages-wraper',
            children: [
              _i8.RouteConfig(RecipesOverviewPageRoute.name,
                  path: 'recipes-overview-page',
                  parent: RecipePagesWraperRoute.name),
              _i8.RouteConfig(RecipeFormPageRoute.name,
                  path: 'recipe-form-page',
                  parent: RecipePagesWraperRoute.name),
              _i8.RouteConfig(RecipesFilterPageRoute.name,
                  path: 'recipes-filter-page',
                  parent: RecipePagesWraperRoute.name),
              _i8.RouteConfig(SettingsPageRoute.name,
                  path: 'settings-page', parent: RecipePagesWraperRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i8.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RecipePagesWraper]
class RecipePagesWraperRoute extends _i8.PageRouteInfo<void> {
  const RecipePagesWraperRoute({List<_i8.PageRouteInfo>? children})
      : super(RecipePagesWraperRoute.name,
            path: '/recipe-pages-wraper', initialChildren: children);

  static const String name = 'RecipePagesWraperRoute';
}

/// generated route for
/// [_i4.RecipesOverviewPage]
class RecipesOverviewPageRoute extends _i8.PageRouteInfo<void> {
  const RecipesOverviewPageRoute()
      : super(RecipesOverviewPageRoute.name, path: 'recipes-overview-page');

  static const String name = 'RecipesOverviewPageRoute';
}

/// generated route for
/// [_i5.RecipeFormPage]
class RecipeFormPageRoute extends _i8.PageRouteInfo<RecipeFormPageRouteArgs> {
  RecipeFormPageRoute({_i9.Key? key, _i10.Recipe? initialRecipe})
      : super(RecipeFormPageRoute.name,
            path: 'recipe-form-page',
            args: RecipeFormPageRouteArgs(
                key: key, initialRecipe: initialRecipe));

  static const String name = 'RecipeFormPageRoute';
}

class RecipeFormPageRouteArgs {
  const RecipeFormPageRouteArgs({this.key, this.initialRecipe});

  final _i9.Key? key;

  final _i10.Recipe? initialRecipe;

  @override
  String toString() {
    return 'RecipeFormPageRouteArgs{key: $key, initialRecipe: $initialRecipe}';
  }
}

/// generated route for
/// [_i6.RecipesFilterPage]
class RecipesFilterPageRoute extends _i8.PageRouteInfo<void> {
  const RecipesFilterPageRoute()
      : super(RecipesFilterPageRoute.name, path: 'recipes-filter-page');

  static const String name = 'RecipesFilterPageRoute';
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsPageRoute extends _i8.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}
