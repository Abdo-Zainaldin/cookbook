import 'package:cookbook_app/application/auth/auth_bloc.dart';
import 'package:cookbook_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/settings/settings_bloc.dart';
import 'package:cookbook_app/application/settings/settings_watcher/settings_watcher_bloc.dart';

import '../routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<SettingsWatcherBloc>()
            ..add(const SettingsWatcherEvent.watchStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<SettingsBloc>(),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (previous, current) => previous.settings != current.settings,
        builder: (context, state) {
          return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            // null means the device's default language
            locale: state.settings.appLanguage == null
                ? null
                : Locale(state.settings.appLanguage!),
            debugShowCheckedModeBanner: false,
            title: 'Cookbook',
            theme: ThemeData.light().copyWith(
              textTheme: ThemeData.light().textTheme.apply(
                    fontFamily:
                        GoogleFonts.getFont(state.settings.appFont).fontFamily,
                  ),
              colorScheme: const ColorScheme.light().copyWith(
                primary: Colors.orangeAccent.shade700,
                secondary: Colors.orangeAccent.shade700,
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                foregroundColor: Colors.white,
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              cardTheme: const CardTheme().copyWith(
                margin: const EdgeInsets.all(8.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
