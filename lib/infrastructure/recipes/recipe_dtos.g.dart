// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDto _$$_RecipeDtoFromJson(Map<String, dynamic> json) => _$_RecipeDto(
      id: json['id'] as String,
      name: json['name'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => IngredientItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => StepItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serverTimeStamp: json['serverTimeStamp'],
    );

Map<String, dynamic> _$$_RecipeDtoToJson(_$_RecipeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ingredients': instance.ingredients.map((e) => e.toJson()).toList(),
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'serverTimeStamp': instance.serverTimeStamp,
    };

_$_IngredientItemDto _$$_IngredientItemDtoFromJson(Map<String, dynamic> json) =>
    _$_IngredientItemDto(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_IngredientItemDtoToJson(
        _$_IngredientItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_StepItemDto _$$_StepItemDtoFromJson(Map<String, dynamic> json) =>
    _$_StepItemDto(
      id: json['id'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_StepItemDtoToJson(_$_StepItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
    };
