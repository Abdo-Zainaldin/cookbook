// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_db_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeLocalDBModelAdapter extends TypeAdapter<RecipeLocalDBModel> {
  @override
  final int typeId = 1;

  @override
  RecipeLocalDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeLocalDBModel(
      fields[0] as String,
      fields[1] as String,
      (fields[2] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      (fields[3] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, RecipeLocalDBModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.ingredients)
      ..writeByte(3)
      ..write(obj.steps)
      ..writeByte(4)
      ..write(obj.recipeDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeLocalDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
