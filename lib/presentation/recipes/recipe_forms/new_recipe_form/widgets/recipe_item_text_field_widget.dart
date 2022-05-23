import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../application/new_recipe_form/new_recipe_form_bloc.dart';
import '../../misc/recipe_items_presentation_classes.dart';

class RecipeItemTextField extends HookWidget {
  final int index;
  final dynamic recipeItemPrimitive;
  final String itemBody;
  const RecipeItemTextField({
    Key? key,
    required this.index,
    required this.recipeItemPrimitive,
    required this.itemBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: itemBody);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Material(
        borderRadius: BorderRadiusDirectional.circular(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('${index + 1}'),
              ),
              Flexible(
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    counterText: '',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        context.read<NewRecipeFormBloc>().add(
                            NewRecipeFormEvent.recipeItemRemoved(
                                recipeItemPrimitive));
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                  onChanged: (value) {
                    context.read<NewRecipeFormBloc>().add(
                        NewRecipeFormEvent.recipeItemChanged(
                            index, recipeItemPrimitive, value));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
