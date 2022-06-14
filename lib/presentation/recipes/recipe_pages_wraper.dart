import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/application/settings/settings_watcher/settings_watcher_bloc.dart';
import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/recipe/recipe_actor/recipe_actor_bloc.dart';
import '../../application/recipe/recipe_filter/recipe_filter_bloc.dart';
import '../../application/recipe/recipe_watcher/recipe_watcher_bloc.dart';
import '../../application/settings/settings_bloc.dart';
import '../../injection.dart';
import '../routes/app_router.gr.dart';

class RecipePagesWraper extends StatelessWidget {
  const RecipePagesWraper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsWatcherBloc, SettingsWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadSuccess: (state) {
              context
                  .read<SettingsBloc>()
                  .add(SettingsEvent.settingsChanged(state.settings));
            },
            orElse: () {});
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
          loadFailure: (_) => Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 24),
                  Text(context.initSettingsFailureStr),
                ],
              ),
            ),
          ),
          loadSuccess: (_) {
            final isUsingLocalDB =
                context.read<SettingsBloc>().state.settings.isUsingLocalRecipes;
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (context) => getIt<RecipeWatcherBloc>()
                      ..add(RecipeWatcherEvent.watchAllStarted(
                          isLocalDB: isUsingLocalDB))),
                BlocProvider(
                  create: (context) => getIt<RecipeActorBloc>(),
                ),
                BlocProvider(
                  create: (context) => RecipeFilterBloc(),
                )
              ],
              child: MultiBlocListener(
                listeners: [
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                          unauthenticated: (_) => AutoRouter.of(context)
                              .replace(const SignInPageRoute()),
                          orElse: () {});
                    },
                  ),
                  BlocListener<SettingsBloc, SettingsState>(
                    listener: (context, state) {
                      state.uploadFailureOrSuccessOption.fold(
                        () {},
                        (either) => either.fold(
                          (failure) => FlushbarHelper.createError(
                              message: failure.maybeMap(
                            unableToUploadeLocalRecipesToCloud: (_) =>
                                context.unableToUploadRecipesStr,
                            orElse: () =>
                                context.unexpectedErrorContactSupportStr,
                          )).show(context),
                          (_) => {},
                        ),
                      );
                      if (state.showUploadInProgress) {
                        FlushbarHelper.createLoading(
                                message: 'Uploading',
                                linearProgressIndicator:
                                    const LinearProgressIndicator())
                            .show(context);
                      } else {
                        // if none of the above conditions are true. in such case,
                        // toggle between cloud and local DBs recipesWatcher cases
                        context.read<RecipeWatcherBloc>().add(
                            RecipeWatcherEvent.watchAllStarted(
                                isLocalDB: state.settings.isUsingLocalRecipes));
                      }
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
                ],
                child: const AutoRouter(),
              ),
            );
          },
        );
      },
    );
  }
}
