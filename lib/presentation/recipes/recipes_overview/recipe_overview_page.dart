import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/injection.dart';
import 'package:cookbook_app/presentation/recipes/recipes_overview/widget/recipe_overview_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/recipe_actor/recipe_actor_bloc.dart';
import '../../../application/recipe_watcher/recipe_watcher_bloc.dart';
import '../../routes/app_router.gr.dart';
import '../../../presentation/localization/l10n/localization_helper.dart';

class RecipeOverviewPage extends StatelessWidget {
  const RecipeOverviewPage({Key? key}) : super(key: key);

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
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) =>
                      AutoRouter.of(context).replace(const SignInPageRoute()),
                  orElse: () {});
            },
          ),
          BlocListener<RecipeWatcherBloc, RecipeWatcherState>(
            listener: (context, state) {
              state.maybeMap(
                loadFailure: (state) => FlushbarHelper.createError(
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
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.recipesStr),
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
              },
              icon: const Icon(Icons.logout),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              AutoRouter.of(context).push(const NewRecipeFormPageRoute());
            },
            child: const Icon(Icons.add),
          ),
          body: const RecipeOverviewBody(),
        ),
      ),
    );
  }
}
