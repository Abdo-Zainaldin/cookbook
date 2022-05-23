import 'package:cookbook_app/presentation/localization/l10n/localization_helper.dart';
import 'package:flutter/material.dart';

import 'package:cookbook_app/domain/recipes/recipe.dart';

class ErrorRecipeCard extends StatelessWidget {
  final Recipe recipe;
  const ErrorRecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).errorColor,
        child: Column(
          children: [
            Text(
              context.invalidRecipeContactSupportStr,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              context.detailsForNerdsStr,
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              recipe.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            const SizedBox(
              height: 2,
            ),
          ],
        ));
  }
}
