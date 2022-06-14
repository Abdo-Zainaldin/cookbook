import 'dart:developer';

import 'package:cookbook_app/presentation/core/localization/localization_helper.dart';
import 'package:flutter/material.dart';

import 'package:cookbook_app/domain/recipes/recipe_failure.dart';

class CriticalFilureDisplay extends StatelessWidget {
  final RecipeFailure failure;
  const CriticalFilureDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          size: 150,
          color: Theme.of(context).errorColor,
        ),
        Text(
          failure.maybeMap(
            insufficientPermission: (_) => context.insufficientPermissionStr,
            orElse: () => context.unexpectedErrorContactSupportStr,
          ),
          textAlign: TextAlign.center,
        ),
        // this is fake button
        TextButton.icon(
          onPressed: () {
            log('Sending email!');
          },
          icon: const Icon(Icons.mail),
          label: Text(context.iNeedHelpStr),
        )
      ],
    ));
  }
}
