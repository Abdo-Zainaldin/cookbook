import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../domain/recipes/value_objects.dart';

extension BuildContextX on BuildContext {
  // sign in page related strings
  String get signInStr => AppLocalizations.of(this)!.signIn;
  String get registerStr => AppLocalizations.of(this)!.register;
  String get emailStr => AppLocalizations.of(this)!.email;
  String get passwordStr => AppLocalizations.of(this)!.password;
  String get signInWithGoogleStr => AppLocalizations.of(this)!.signInWithGoogle;
  String get invalidEmailStr => AppLocalizations.of(this)!.invalid(emailStr);
  String get invalidPasswordStr =>
      AppLocalizations.of(this)!.invalid(passwordStr);

  // Recipe overview and Recipe Form page related strings
  String get recipesStr => AppLocalizations.of(this)!.recipes;
  String get recipeStr => AppLocalizations.of(this)!.recipe;
  String get emptyRecipesOverViewPageStr =>
      AppLocalizations.of(this)!.emptyRecipesOverViewPage;
  String get ingredientsStr => AppLocalizations.of(this)!.ingredients;
  String get stepsStr => AppLocalizations.of(this)!.steps;
  String get savingStr => AppLocalizations.of(this)!.saving;
  String get createRecipeStr => AppLocalizations.of(this)!.createRecipe;
  String get editTheRecipeStr => AppLocalizations.of(this)!.editTheRecipe;
  String get recipeNameStr => AppLocalizations.of(this)!.recipeName;
  String get stepStr => AppLocalizations.of(this)!.step;
  String get addStepStr => AppLocalizations.of(this)!.addStep;
  String get addIngredientStr => AppLocalizations.of(this)!.addIngredient;
  String get selectedRecipeStr => AppLocalizations.of(this)!.selectedRecipe;
  String get cancelStr => AppLocalizations.of(this)!.cancel;
  String get deleteStr => AppLocalizations.of(this)!.delete;
  String get editStr => AppLocalizations.of(this)!.edit;
  String get copyStr => AppLocalizations.of(this)!.copy;
  String get liveCookingStr => AppLocalizations.of(this)!.liveCooking;

  // Recipes filter page related strings
  String get recipesFilterStr => AppLocalizations.of(this)!.recipesFilter;
  String get recipesFilterInfoTitleStr =>
      AppLocalizations.of(this)!.recipesFilterInfoTitle;
  String get recipesFilterInfoStr =>
      AppLocalizations.of(this)!.recipesFilterInfo;

  // Recipes setting page related strings
  String get settingsStr => AppLocalizations.of(this)!.settings;
  String get languageStr => AppLocalizations.of(this)!.language;
  String get defaultStr => AppLocalizations.of(this)!.defult;
  String get fontStr => AppLocalizations.of(this)!.font;
  String get areYouSureStr => AppLocalizations.of(this)!.areYouSure;
  String get acceptStr => AppLocalizations.of(this)!.accept;
  String get unableToUploadRecipesStr =>
      AppLocalizations.of(this)!.unableToUploadRecipes;
  String get uploadLocalStoredRecipesToCloudStr =>
      AppLocalizations.of(this)!.uploadLocalStoredRecipesToCloud;
  String get saveRecipesToCloudStr =>
      AppLocalizations.of(this)!.saveRecipesToCloud;
  String get cloudStr => AppLocalizations.of(this)!.cloud;
  String get localStr => AppLocalizations.of(this)!.local;
  String get youAreUsingLocalStoregeStr =>
      AppLocalizations.of(this)!.youAreUsingLocalCloudStoregeSwitch(localStr);
  String get youAreUsingCloudStoregeStr =>
      AppLocalizations.of(this)!.youAreUsingLocalCloudStoregeSwitch(cloudStr);
  String get saveRecipesToCloudActionInformationStr =>
      AppLocalizations.of(this)!.saveRecipesToCloudActionInformation;
  String get initSettingsFailureStr =>
      AppLocalizations.of(this)!.initSettingsFailure;

  // Failure messages
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
