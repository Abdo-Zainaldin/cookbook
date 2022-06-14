import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_failure.freezed.dart';

@freezed
abstract class RecipeFailure with _$RecipeFailure {
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory RecipeFailure.unexpected() = _Unexpected;
  const factory RecipeFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory RecipeFailure.unableToUpdate() = _UnableToUpdate;
}
