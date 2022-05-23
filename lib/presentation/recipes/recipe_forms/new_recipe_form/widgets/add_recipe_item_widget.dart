import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/new_recipe_form/new_recipe_form_bloc.dart';

class AddRecipeItem extends StatelessWidget {
  final dynamic itemPrimitive;
  final String itemName;
  final bool enable;
  const AddRecipeItem({
    Key? key,
    required this.itemPrimitive,
    required this.itemName,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enable,
      title: Text('#add $itemName#'),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.add),
      ),
      onTap: () {
        context
            .read<NewRecipeFormBloc>()
            .add(NewRecipeFormEvent.recipeItemAdded(itemPrimitive));
      },
    );
  }
}
