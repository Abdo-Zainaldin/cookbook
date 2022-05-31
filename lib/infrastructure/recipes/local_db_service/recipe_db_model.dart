import 'dart:convert';

import 'package:hive/hive.dart';

part 'recipe_db_model.g.dart';

@HiveType(typeId: 1)
class RecipeLocalDBModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<Map<String, dynamic>> ingredients;
  @HiveField(3)
  final List<Map<String, dynamic>> steps;
  @HiveField(4)
  final DateTime recipeDate = DateTime.now().toUtc();

  RecipeLocalDBModel(
    this.id,
    this.name,
    this.ingredients,
    this.steps,
  );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'ingredients': ingredients,
      'steps': steps,
    };
  }

  factory RecipeLocalDBModel.fromJson(Map<String, dynamic> map) {
    return RecipeLocalDBModel(
      map['id'] as String,
      map['name'] as String,
      List<Map<String, dynamic>>.from(
        (map['ingredients'] as List).map<Map<String, dynamic>>(
          (x) => x,
        ),
      ),
      List<Map<String, dynamic>>.from(
        (map['steps'] as List).map<Map<String, dynamic>>(
          (x) => x,
        ),
      ),
    );
  }
}
