import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cookbook_app/injection.dart';
import 'package:cookbook_app/presentation/recipes/recipes_overview/widget/recipes_overview_body_widget.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/recipe_actor/recipe_actor_bloc.dart';
import '../../../application/recipe_filter/recipe_filter_bloc.dart';
import '../../../application/recipe_watcher/recipe_watcher_bloc.dart';
import '../../../presentation/localization/l10n/localization_helper.dart';
import '../../routes/app_router.gr.dart';

class RecipeOverviewPageWraper extends StatelessWidget {
  const RecipeOverviewPageWraper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RecipeWatcherBloc>()
            ..add(const RecipeWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<RecipeActorBloc>(),
        ),
        BlocProvider(
          create: (context) => RecipeFilterBloc(),
        )
      ],
      child: MultiBlocListener(listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    AutoRouter.of(context).replace(const SignInPageRoute()),
                orElse: () {});
          },
        ),
        BlocListener<RecipeActorBloc, RecipeActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) => FlushbarHelper.createError(
                message: state.recipeFailure.map(
                  unexpected: (_) =>
                      context.unexpectedErrorOccuredWhileDeletingStr,
                  insufficientPermission: (_) =>
                      context.insufficientPermissionStr,
                  unableToUpdate: (_) => context.impossibleErrorStr,
                ),
              ).show(context),
              orElse: () {},
            );
          },
        ),
      ], child: const AutoRouter()),
    );
  }
}

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
              orElse: () => const SizedBox.shrink())
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
