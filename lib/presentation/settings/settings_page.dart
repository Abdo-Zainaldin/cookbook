import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/settings/settings_bloc.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.settingsStr)),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (previous, current) => previous.settings != current.settings,
        builder: (context, state) {
          return ListView(
            physics: const ClampingScrollPhysics(),
            children: <Card>[
              // change app language card
              Card(
                child: ListTile(
                  title: Text(context.languageStr),
                  trailing: Builder(
                    builder: (context) {
                      // create a list of the supported languages and add default String to it
                      String defaultStr = context.defaultStr;
                      List<String> languagesList = [defaultStr];
                      languagesList.addAll(
                        AppLocalizations.supportedLocales
                            .map((value) => value.toString())
                            .toList(),
                      );

                      return DropdownButton<String>(
                        alignment: Alignment.center,
                        value: state.settings.appLanguage ?? defaultStr,
                        onChanged: (String? value) {
                          context
                              .read<SettingsBloc>()
                              .add(SettingsEvent.settingsChanged(
                                value == defaultStr
                                    // null means the device's default language
                                    ? state.settings.copyWith(appLanguage: null)
                                    : state.settings
                                        .copyWith(appLanguage: value),
                              ));
                        },
                        items: languagesList
                            .map(
                              (value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ),
              ),
              // change app font card
              Card(
                child: Visibility(
                  // here we hide the card because the app fonts
                  // doesn't support the Arabic language one of the supported languages
                  // we should add more languages here if we want to support/add
                  // more languages to the app that don't get supported by the app fonts
                  visible:
                      !(Localizations.localeOf(context).toString() == 'ar'),
                  child: ListTile(
                    title: Text(context.fontStr),
                    trailing: Builder(
                      builder: (context) {
                        List fonts = [
                          'Roboto',
                          'Courgette',
                          'Playfair Display',
                          'Acme',
                        ];
                        return DropdownButton<String>(
                          value: state.settings.appFont,
                          onChanged: (String? value) {
                            context
                                .read<SettingsBloc>()
                                .add(SettingsEvent.settingsChanged(
                                  state.settings.copyWith(appFont: value!),
                                ));
                          },
                          items: fonts
                              .map(
                                (value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.getFont(value).fontFamily,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // toggle between local and cloud storage card
              Card(
                child: ListTile(
                  title: Text(context.saveRecipesToCloudStr),
                  subtitle: Text(state.settings.isUsingLocalRecipes
                      ? context.youAreUsingLocalStoregeStr
                      : context.youAreUsingCloudStoregeStr),
                  trailing: Switch(
                    activeColor: Theme.of(context).colorScheme.primary,
                    value: !state.settings.isUsingLocalRecipes,
                    onChanged: (_) {
                      context.read<SettingsBloc>().add(
                          const SettingsEvent.toggleBetweenCloudAndLocalDB());
                    },
                  ),
                ),
              ),
              // upload locally stored recipes to the cloud card
              Card(
                child: InkWell(
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.file_upload_outlined,
                        size: 32,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: Text(context.uploadLocalStoredRecipesToCloudStr),
                    ),
                  ),
                  onTap: () {
                    showAreYouSureOfAnActionDialog(
                      context,
                      context.saveRecipesToCloudActionInformationStr,
                      () {
                        context.read<SettingsBloc>().add(
                            const SettingsEvent.uploadLocalRecipesToCloud());
                      },
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void showAreYouSureOfAnActionDialog(
    BuildContext context,
    String actionText,
    Function() action,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(context.areYouSureStr),
          content: Text(actionText),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(context.cancelStr),
            ),
            TextButton(
              onPressed: () {
                action();
                Navigator.pop(context);
              },
              child: Text(context.acceptStr),
            ),
          ],
        );
      },
    );
  }
}
