// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFormEventCopyWith<$Res> {
  factory $RecipeFormEventCopyWith(
          RecipeFormEvent value, $Res Function(RecipeFormEvent) then) =
      _$RecipeFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeFormEventCopyWithImpl<$Res>
    implements $RecipeFormEventCopyWith<$Res> {
  _$RecipeFormEventCopyWithImpl(this._value, this._then);

  final RecipeFormEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeFormEvent) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Recipe> initialRecipeOption, bool isLocalDB});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? initialRecipeOption = freezed,
    Object? isLocalDB = freezed,
  }) {
    return _then(_$Initialized(
      initialRecipeOption == freezed
          ? _value.initialRecipeOption
          : initialRecipeOption // ignore: cast_nullable_to_non_nullable
              as Option<Recipe>,
      isLocalDB: isLocalDB == freezed
          ? _value.isLocalDB
          : isLocalDB // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialRecipeOption, {required this.isLocalDB});

  @override
  final Option<Recipe> initialRecipeOption;
  @override
  final bool isLocalDB;

  @override
  String toString() {
    return 'RecipeFormEvent.initialized(initialRecipeOption: $initialRecipeOption, isLocalDB: $isLocalDB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialRecipeOption, initialRecipeOption) &&
            const DeepCollectionEquality().equals(other.isLocalDB, isLocalDB));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialRecipeOption),
      const DeepCollectionEquality().hash(isLocalDB));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialRecipeOption, isLocalDB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialRecipeOption, isLocalDB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialRecipeOption, isLocalDB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements RecipeFormEvent {
  const factory Initialized(final Option<Recipe> initialRecipeOption,
      {required final bool isLocalDB}) = _$Initialized;

  Option<Recipe> get initialRecipeOption => throw _privateConstructorUsedError;
  bool get isLocalDB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, (v) => _then(v as _$NameChanged));

  @override
  _$NameChanged get _value => super._value as _$NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_$NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'RecipeFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            const DeepCollectionEquality().equals(other.nameStr, nameStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameStr));

  @JsonKey(ignore: true)
  @override
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RecipeFormEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IngredientsChangedCopyWith<$Res> {
  factory _$$IngredientsChangedCopyWith(_$IngredientsChanged value,
          $Res Function(_$IngredientsChanged) then) =
      __$$IngredientsChangedCopyWithImpl<$Res>;
  $Res call({KtList<IngredientItemPrimitive> ingredients});
}

/// @nodoc
class __$$IngredientsChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$IngredientsChangedCopyWith<$Res> {
  __$$IngredientsChangedCopyWithImpl(
      _$IngredientsChanged _value, $Res Function(_$IngredientsChanged) _then)
      : super(_value, (v) => _then(v as _$IngredientsChanged));

  @override
  _$IngredientsChanged get _value => super._value as _$IngredientsChanged;

  @override
  $Res call({
    Object? ingredients = freezed,
  }) {
    return _then(_$IngredientsChanged(
      ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as KtList<IngredientItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$IngredientsChanged implements IngredientsChanged {
  const _$IngredientsChanged(this.ingredients);

  @override
  final KtList<IngredientItemPrimitive> ingredients;

  @override
  String toString() {
    return 'RecipeFormEvent.ingredientsChanged(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsChanged &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(ingredients));

  @JsonKey(ignore: true)
  @override
  _$$IngredientsChangedCopyWith<_$IngredientsChanged> get copyWith =>
      __$$IngredientsChangedCopyWithImpl<_$IngredientsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return ingredientsChanged(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return ingredientsChanged?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (ingredientsChanged != null) {
      return ingredientsChanged(ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return ingredientsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return ingredientsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (ingredientsChanged != null) {
      return ingredientsChanged(this);
    }
    return orElse();
  }
}

abstract class IngredientsChanged implements RecipeFormEvent {
  const factory IngredientsChanged(
      final KtList<IngredientItemPrimitive> ingredients) = _$IngredientsChanged;

  KtList<IngredientItemPrimitive> get ingredients =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IngredientsChangedCopyWith<_$IngredientsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StepsChangedCopyWith<$Res> {
  factory _$$StepsChangedCopyWith(
          _$StepsChanged value, $Res Function(_$StepsChanged) then) =
      __$$StepsChangedCopyWithImpl<$Res>;
  $Res call({KtList<StepItemPrimitive> steps});
}

/// @nodoc
class __$$StepsChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$StepsChangedCopyWith<$Res> {
  __$$StepsChangedCopyWithImpl(
      _$StepsChanged _value, $Res Function(_$StepsChanged) _then)
      : super(_value, (v) => _then(v as _$StepsChanged));

  @override
  _$StepsChanged get _value => super._value as _$StepsChanged;

  @override
  $Res call({
    Object? steps = freezed,
  }) {
    return _then(_$StepsChanged(
      steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as KtList<StepItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$StepsChanged implements StepsChanged {
  const _$StepsChanged(this.steps);

  @override
  final KtList<StepItemPrimitive> steps;

  @override
  String toString() {
    return 'RecipeFormEvent.stepsChanged(steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepsChanged &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(steps));

  @JsonKey(ignore: true)
  @override
  _$$StepsChangedCopyWith<_$StepsChanged> get copyWith =>
      __$$StepsChangedCopyWithImpl<_$StepsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return stepsChanged(steps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return stepsChanged?.call(steps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (stepsChanged != null) {
      return stepsChanged(steps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return stepsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return stepsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (stepsChanged != null) {
      return stepsChanged(this);
    }
    return orElse();
  }
}

abstract class StepsChanged implements RecipeFormEvent {
  const factory StepsChanged(final KtList<StepItemPrimitive> steps) =
      _$StepsChanged;

  KtList<StepItemPrimitive> get steps => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$StepsChangedCopyWith<_$StepsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditingFormStateChangedCopyWith<$Res> {
  factory _$$EditingFormStateChangedCopyWith(_$EditingFormStateChanged value,
          $Res Function(_$EditingFormStateChanged) then) =
      __$$EditingFormStateChangedCopyWithImpl<$Res>;
  $Res call({bool isEditing});
}

/// @nodoc
class __$$EditingFormStateChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$EditingFormStateChangedCopyWith<$Res> {
  __$$EditingFormStateChangedCopyWithImpl(_$EditingFormStateChanged _value,
      $Res Function(_$EditingFormStateChanged) _then)
      : super(_value, (v) => _then(v as _$EditingFormStateChanged));

  @override
  _$EditingFormStateChanged get _value =>
      super._value as _$EditingFormStateChanged;

  @override
  $Res call({
    Object? isEditing = freezed,
  }) {
    return _then(_$EditingFormStateChanged(
      isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditingFormStateChanged implements EditingFormStateChanged {
  const _$EditingFormStateChanged(this.isEditing);

  @override
  final bool isEditing;

  @override
  String toString() {
    return 'RecipeFormEvent.editingFormStateChanged(isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditingFormStateChanged &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  _$$EditingFormStateChangedCopyWith<_$EditingFormStateChanged> get copyWith =>
      __$$EditingFormStateChangedCopyWithImpl<_$EditingFormStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return editingFormStateChanged(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return editingFormStateChanged?.call(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (editingFormStateChanged != null) {
      return editingFormStateChanged(isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return editingFormStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return editingFormStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (editingFormStateChanged != null) {
      return editingFormStateChanged(this);
    }
    return orElse();
  }
}

abstract class EditingFormStateChanged implements RecipeFormEvent {
  const factory EditingFormStateChanged(final bool isEditing) =
      _$EditingFormStateChanged;

  bool get isEditing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EditingFormStateChangedCopyWith<_$EditingFormStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$RecipeFormEventCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'RecipeFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Recipe> initialRecipeOption, bool isLocalDB)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(bool isEditing) editingFormStateChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption, bool isLocalDB)?
        initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(bool isEditing)? editingFormStateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IngredientsChanged value) ingredientsChanged,
    required TResult Function(StepsChanged value) stepsChanged,
    required TResult Function(EditingFormStateChanged value)
        editingFormStateChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(EditingFormStateChanged value)? editingFormStateChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements RecipeFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$RecipeFormState {
  Recipe get recipe => throw _privateConstructorUsedError;
  Recipe get initialRecipe => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isCreating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isLocalDB => throw _privateConstructorUsedError;
  Option<Either<RecipeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeFormStateCopyWith<RecipeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFormStateCopyWith<$Res> {
  factory $RecipeFormStateCopyWith(
          RecipeFormState value, $Res Function(RecipeFormState) then) =
      _$RecipeFormStateCopyWithImpl<$Res>;
  $Res call(
      {Recipe recipe,
      Recipe initialRecipe,
      bool showErrorMessages,
      bool isEditing,
      bool isCreating,
      bool isSaving,
      bool isLocalDB,
      Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption});

  $RecipeCopyWith<$Res> get recipe;
  $RecipeCopyWith<$Res> get initialRecipe;
}

/// @nodoc
class _$RecipeFormStateCopyWithImpl<$Res>
    implements $RecipeFormStateCopyWith<$Res> {
  _$RecipeFormStateCopyWithImpl(this._value, this._then);

  final RecipeFormState _value;
  // ignore: unused_field
  final $Res Function(RecipeFormState) _then;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? initialRecipe = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isCreating = freezed,
    Object? isSaving = freezed,
    Object? isLocalDB = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      initialRecipe: initialRecipe == freezed
          ? _value.initialRecipe
          : initialRecipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreating: isCreating == freezed
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocalDB: isLocalDB == freezed
          ? _value.isLocalDB
          : isLocalDB // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RecipeFailure, Unit>>,
    ));
  }

  @override
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }

  @override
  $RecipeCopyWith<$Res> get initialRecipe {
    return $RecipeCopyWith<$Res>(_value.initialRecipe, (value) {
      return _then(_value.copyWith(initialRecipe: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeFormStateCopyWith<$Res>
    implements $RecipeFormStateCopyWith<$Res> {
  factory _$$_RecipeFormStateCopyWith(
          _$_RecipeFormState value, $Res Function(_$_RecipeFormState) then) =
      __$$_RecipeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Recipe recipe,
      Recipe initialRecipe,
      bool showErrorMessages,
      bool isEditing,
      bool isCreating,
      bool isSaving,
      bool isLocalDB,
      Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $RecipeCopyWith<$Res> get recipe;
  @override
  $RecipeCopyWith<$Res> get initialRecipe;
}

/// @nodoc
class __$$_RecipeFormStateCopyWithImpl<$Res>
    extends _$RecipeFormStateCopyWithImpl<$Res>
    implements _$$_RecipeFormStateCopyWith<$Res> {
  __$$_RecipeFormStateCopyWithImpl(
      _$_RecipeFormState _value, $Res Function(_$_RecipeFormState) _then)
      : super(_value, (v) => _then(v as _$_RecipeFormState));

  @override
  _$_RecipeFormState get _value => super._value as _$_RecipeFormState;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? initialRecipe = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isCreating = freezed,
    Object? isSaving = freezed,
    Object? isLocalDB = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_RecipeFormState(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      initialRecipe: initialRecipe == freezed
          ? _value.initialRecipe
          : initialRecipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreating: isCreating == freezed
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocalDB: isLocalDB == freezed
          ? _value.isLocalDB
          : isLocalDB // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RecipeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RecipeFormState implements _RecipeFormState {
  const _$_RecipeFormState(
      {required this.recipe,
      required this.initialRecipe,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isCreating,
      required this.isSaving,
      required this.isLocalDB,
      required this.saveFailureOrSuccessOption});

  @override
  final Recipe recipe;
  @override
  final Recipe initialRecipe;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isCreating;
  @override
  final bool isSaving;
  @override
  final bool isLocalDB;
  @override
  final Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecipeFormState(recipe: $recipe, initialRecipe: $initialRecipe, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isCreating: $isCreating, isSaving: $isSaving, isLocalDB: $isLocalDB, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeFormState &&
            const DeepCollectionEquality().equals(other.recipe, recipe) &&
            const DeepCollectionEquality()
                .equals(other.initialRecipe, initialRecipe) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.isCreating, isCreating) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isLocalDB, isLocalDB) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipe),
      const DeepCollectionEquality().hash(initialRecipe),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isCreating),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isLocalDB),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeFormStateCopyWith<_$_RecipeFormState> get copyWith =>
      __$$_RecipeFormStateCopyWithImpl<_$_RecipeFormState>(this, _$identity);
}

abstract class _RecipeFormState implements RecipeFormState {
  const factory _RecipeFormState(
      {required final Recipe recipe,
      required final Recipe initialRecipe,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isCreating,
      required final bool isSaving,
      required final bool isLocalDB,
      required final Option<Either<RecipeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_RecipeFormState;

  @override
  Recipe get recipe => throw _privateConstructorUsedError;
  @override
  Recipe get initialRecipe => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isCreating => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isLocalDB => throw _privateConstructorUsedError;
  @override
  Option<Either<RecipeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeFormStateCopyWith<_$_RecipeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
