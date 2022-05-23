import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_failure.freezed.dart';

@freezed
abstract class RecipeFailure with _$RecipeFailure {
  const factory RecipeFailure.unexpected() = _Unexpected;
  const factory RecipeFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory RecipeFailure.unableToUpdate() = _UnableToUpdate;
}
