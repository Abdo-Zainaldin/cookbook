import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../domain/recipes/value_objects.dart';

extension BuildContextX on BuildContext {
  // sign in page related Strings
  String get signInStr => AppLocalizations.of(this)!.signIn;
  String get registerStr => AppLocalizations.of(this)!.register;
  String get emailStr => AppLocalizations.of(this)!.email;
  String get passwordStr => AppLocalizations.of(this)!.password;
  String get signInWithGoogleStr => AppLocalizations.of(this)!.signInWithGoogle;
  String get invalidEmailStr => AppLocalizations.of(this)!.invalid(emailStr);
  String get invalidPasswordStr =>
      AppLocalizations.of(this)!.invalid(passwordStr);

  // Recipe overview and Recipe Form page related Strings
  String get recipesStr => AppLocalizations.of(this)!.recipes;
  String get recipeStr => AppLocalizations.of(this)!.recipe;
  String get editTheRecipeStr => AppLocalizations.of(this)!.editTheRecipe;
  String get recipeNameStr => AppLocalizations.of(this)!.recipeName;
  String get stepStr => AppLocalizations.of(this)!.step;
  String get addStepStr => AppLocalizations.of(this)!.addStep;
  String get addIngredientStr => AppLocalizations.of(this)!.addIngredient;
  String get selectedRecipeStr => AppLocalizations.of(this)!.selectedRecipe;
  String get cancelStr => AppLocalizations.of(this)!.cancel;
  String get deleteStr => AppLocalizations.of(this)!.delete;
  String get invalidRecipeContactSupportStr =>
      AppLocalizations.of(this)!.invalidRecipe(', $contactSupportStr');
  String get ingredientsListIsTooShortStr =>
      AppLocalizations.of(this)!.ingredientsListIsTooShort(ListItem.minLength);
  String get ingredientsListIsTooLongStr =>
      AppLocalizations.of(this)!.ingredientsListIsTooLong(ListItem.maxLength);
  String get stepsListIsTooShortStr =>
      AppLocalizations.of(this)!.stepsListIsTooShort(ListItem.minLength);
  String get stepsListIsTooLongStr =>
      AppLocalizations.of(this)!.stepsListIsTooLong(ListItem.maxLength);
  String get cannotBeEmptyStr => AppLocalizations.of(this)!.cannotBeEmpty;
  String get exceedingLengthStr => AppLocalizations.of(this)!.exceedingLength;
  String get multilineStr => AppLocalizations.of(this)!.multiline;
  String get detailsForNerdsStr => AppLocalizations.of(this)!.detailsForNerds;
  String get iNeedHelpStr => AppLocalizations.of(this)!.iNeedHelp;
  String get unexpectedErrorContactSupportStr =>
      AppLocalizations.of(this)!.unexpectedError('\n$contactSupportStr');

  // Failure messages
  String get cancelledFailureStr => AppLocalizations.of(this)!.cancelledFailure;
  String get serverErrorFailureStr =>
      AppLocalizations.of(this)!.serverErrorFailure;
  String get emailAlreadyInUseFailureStr =>
      AppLocalizations.of(this)!.emailAlreadyInUseFailure;
  String get invalidEmailAndPasswordCombinationFailureStr =>
      AppLocalizations.of(this)!.invalidEmailAndPasswordCombinationFailure;
  String get contactSupportStr => AppLocalizations.of(this)!.contactSupport;
  String get unexpectedErrorOccuredWhileDeletingStr =>
      AppLocalizations.of(this)!.unexpectedErrorOccuredWhileDeleting;
  String get unableToUpdateStr => AppLocalizations.of(this)!.unableToUpdate;
  String get insufficientPermissionStr =>
      AppLocalizations.of(this)!.insufficientPermission;
  String get impossibleErrorStr => AppLocalizations.of(this)!.impossibleError;
}
