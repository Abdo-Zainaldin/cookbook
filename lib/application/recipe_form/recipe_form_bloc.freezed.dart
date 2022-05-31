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
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Recipe> initialRecipeOption});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? initialRecipeOption = freezed,
  }) {
    return _then(Initialized(
      initialRecipeOption == freezed
          ? _value.initialRecipeOption
          : initialRecipeOption // ignore: cast_nullable_to_non_nullable
              as Option<Recipe>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialRecipeOption);

  @override
  final Option<Recipe> initialRecipeOption;

  @override
  String toString() {
    return 'RecipeFormEvent.initialized(initialRecipeOption: $initialRecipeOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialRecipeOption, initialRecipeOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialRecipeOption));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return initialized(initialRecipeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialRecipeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialRecipeOption);
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
  const factory Initialized(final Option<Recipe> initialRecipeOption) =
      _$Initialized;

  Option<Recipe> get initialRecipeOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(NameChanged(
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
            other is NameChanged &&
            const DeepCollectionEquality().equals(other.nameStr, nameStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameStr));

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsChangedCopyWith<$Res> {
  factory $IngredientsChangedCopyWith(
          IngredientsChanged value, $Res Function(IngredientsChanged) then) =
      _$IngredientsChangedCopyWithImpl<$Res>;
  $Res call({KtList<IngredientItemPrimitive> ingredients});
}

/// @nodoc
class _$IngredientsChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $IngredientsChangedCopyWith<$Res> {
  _$IngredientsChangedCopyWithImpl(
      IngredientsChanged _value, $Res Function(IngredientsChanged) _then)
      : super(_value, (v) => _then(v as IngredientsChanged));

  @override
  IngredientsChanged get _value => super._value as IngredientsChanged;

  @override
  $Res call({
    Object? ingredients = freezed,
  }) {
    return _then(IngredientsChanged(
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
            other is IngredientsChanged &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(ingredients));

  @JsonKey(ignore: true)
  @override
  $IngredientsChangedCopyWith<IngredientsChanged> get copyWith =>
      _$IngredientsChangedCopyWithImpl<IngredientsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return ingredientsChanged(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return ingredientsChanged?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
  $IngredientsChangedCopyWith<IngredientsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsChangedCopyWith<$Res> {
  factory $StepsChangedCopyWith(
          StepsChanged value, $Res Function(StepsChanged) then) =
      _$StepsChangedCopyWithImpl<$Res>;
  $Res call({KtList<StepItemPrimitive> steps});
}

/// @nodoc
class _$StepsChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $StepsChangedCopyWith<$Res> {
  _$StepsChangedCopyWithImpl(
      StepsChanged _value, $Res Function(StepsChanged) _then)
      : super(_value, (v) => _then(v as StepsChanged));

  @override
  StepsChanged get _value => super._value as StepsChanged;

  @override
  $Res call({
    Object? steps = freezed,
  }) {
    return _then(StepsChanged(
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
            other is StepsChanged &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(steps));

  @JsonKey(ignore: true)
  @override
  $StepsChangedCopyWith<StepsChanged> get copyWith =>
      _$StepsChangedCopyWithImpl<StepsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return stepsChanged(steps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return stepsChanged?.call(steps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
  $StepsChangedCopyWith<StepsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatingRecipePageIngdexChangedCopyWith<$Res> {
  factory $CreatingRecipePageIngdexChangedCopyWith(
          CreatingRecipePageIngdexChanged value,
          $Res Function(CreatingRecipePageIngdexChanged) then) =
      _$CreatingRecipePageIngdexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$CreatingRecipePageIngdexChangedCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $CreatingRecipePageIngdexChangedCopyWith<$Res> {
  _$CreatingRecipePageIngdexChangedCopyWithImpl(
      CreatingRecipePageIngdexChanged _value,
      $Res Function(CreatingRecipePageIngdexChanged) _then)
      : super(_value, (v) => _then(v as CreatingRecipePageIngdexChanged));

  @override
  CreatingRecipePageIngdexChanged get _value =>
      super._value as CreatingRecipePageIngdexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(CreatingRecipePageIngdexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreatingRecipePageIngdexChanged
    implements CreatingRecipePageIngdexChanged {
  const _$CreatingRecipePageIngdexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RecipeFormEvent.creatingRecipePageIngdexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatingRecipePageIngdexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $CreatingRecipePageIngdexChangedCopyWith<CreatingRecipePageIngdexChanged>
      get copyWith => _$CreatingRecipePageIngdexChangedCopyWithImpl<
          CreatingRecipePageIngdexChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return creatingRecipePageIngdexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return creatingRecipePageIngdexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (creatingRecipePageIngdexChanged != null) {
      return creatingRecipePageIngdexChanged(index);
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
    required TResult Function(Saved value) saved,
  }) {
    return creatingRecipePageIngdexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
    TResult Function(Saved value)? saved,
  }) {
    return creatingRecipePageIngdexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (creatingRecipePageIngdexChanged != null) {
      return creatingRecipePageIngdexChanged(this);
    }
    return orElse();
  }
}

abstract class CreatingRecipePageIngdexChanged implements RecipeFormEvent {
  const factory CreatingRecipePageIngdexChanged(final int index) =
      _$CreatingRecipePageIngdexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatingRecipePageIngdexChangedCopyWith<CreatingRecipePageIngdexChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditingModeOnOffCopyWith<$Res> {
  factory $EditingModeOnOffCopyWith(
          EditingModeOnOff value, $Res Function(EditingModeOnOff) then) =
      _$EditingModeOnOffCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditingModeOnOffCopyWithImpl<$Res>
    extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $EditingModeOnOffCopyWith<$Res> {
  _$EditingModeOnOffCopyWithImpl(
      EditingModeOnOff _value, $Res Function(EditingModeOnOff) _then)
      : super(_value, (v) => _then(v as EditingModeOnOff));

  @override
  EditingModeOnOff get _value => super._value as EditingModeOnOff;
}

/// @nodoc

class _$EditingModeOnOff implements EditingModeOnOff {
  const _$EditingModeOnOff();

  @override
  String toString() {
    return 'RecipeFormEvent.editingModeOnOff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditingModeOnOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return editingModeOnOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return editingModeOnOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (editingModeOnOff != null) {
      return editingModeOnOff();
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
    required TResult Function(Saved value) saved,
  }) {
    return editingModeOnOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
    TResult Function(Saved value)? saved,
  }) {
    return editingModeOnOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IngredientsChanged value)? ingredientsChanged,
    TResult Function(StepsChanged value)? stepsChanged,
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (editingModeOnOff != null) {
      return editingModeOnOff(this);
    }
    return orElse();
  }
}

abstract class EditingModeOnOff implements RecipeFormEvent {
  const factory EditingModeOnOff() = _$EditingModeOnOff;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$RecipeFormEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
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
        (other.runtimeType == runtimeType && other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Recipe> initialRecipeOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(KtList<IngredientItemPrimitive> ingredients)
        ingredientsChanged,
    required TResult Function(KtList<StepItemPrimitive> steps) stepsChanged,
    required TResult Function(int index) creatingRecipePageIngdexChanged,
    required TResult Function() editingModeOnOff,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Recipe> initialRecipeOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(KtList<IngredientItemPrimitive> ingredients)?
        ingredientsChanged,
    TResult Function(KtList<StepItemPrimitive> steps)? stepsChanged,
    TResult Function(int index)? creatingRecipePageIngdexChanged,
    TResult Function()? editingModeOnOff,
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
    required TResult Function(CreatingRecipePageIngdexChanged value)
        creatingRecipePageIngdexChanged,
    required TResult Function(EditingModeOnOff value) editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
    TResult Function(CreatingRecipePageIngdexChanged value)?
        creatingRecipePageIngdexChanged,
    TResult Function(EditingModeOnOff value)? editingModeOnOff,
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
  int get creatingRecipePageIndex => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isCreating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get successfullySaved => throw _privateConstructorUsedError;
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
      int creatingRecipePageIndex,
      bool showErrorMessages,
      bool isEditing,
      bool isCreating,
      bool isSaving,
      bool successfullySaved,
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
    Object? creatingRecipePageIndex = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isCreating = freezed,
    Object? isSaving = freezed,
    Object? successfullySaved = freezed,
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
      creatingRecipePageIndex: creatingRecipePageIndex == freezed
          ? _value.creatingRecipePageIndex
          : creatingRecipePageIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      successfullySaved: successfullySaved == freezed
          ? _value.successfullySaved
          : successfullySaved // ignore: cast_nullable_to_non_nullable
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
abstract class _$RecipeFormStateCopyWith<$Res>
    implements $RecipeFormStateCopyWith<$Res> {
  factory _$RecipeFormStateCopyWith(
          _RecipeFormState value, $Res Function(_RecipeFormState) then) =
      __$RecipeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Recipe recipe,
      Recipe initialRecipe,
      int creatingRecipePageIndex,
      bool showErrorMessages,
      bool isEditing,
      bool isCreating,
      bool isSaving,
      bool successfullySaved,
      Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $RecipeCopyWith<$Res> get recipe;
  @override
  $RecipeCopyWith<$Res> get initialRecipe;
}

/// @nodoc
class __$RecipeFormStateCopyWithImpl<$Res>
    extends _$RecipeFormStateCopyWithImpl<$Res>
    implements _$RecipeFormStateCopyWith<$Res> {
  __$RecipeFormStateCopyWithImpl(
      _RecipeFormState _value, $Res Function(_RecipeFormState) _then)
      : super(_value, (v) => _then(v as _RecipeFormState));

  @override
  _RecipeFormState get _value => super._value as _RecipeFormState;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? initialRecipe = freezed,
    Object? creatingRecipePageIndex = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isCreating = freezed,
    Object? isSaving = freezed,
    Object? successfullySaved = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_RecipeFormState(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      initialRecipe: initialRecipe == freezed
          ? _value.initialRecipe
          : initialRecipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      creatingRecipePageIndex: creatingRecipePageIndex == freezed
          ? _value.creatingRecipePageIndex
          : creatingRecipePageIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      successfullySaved: successfullySaved == freezed
          ? _value.successfullySaved
          : successfullySaved // ignore: cast_nullable_to_non_nullable
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
      required this.creatingRecipePageIndex,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isCreating,
      required this.isSaving,
      required this.successfullySaved,
      required this.saveFailureOrSuccessOption});

  @override
  final Recipe recipe;
  @override
  final Recipe initialRecipe;
  @override
  final int creatingRecipePageIndex;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isCreating;
  @override
  final bool isSaving;
  @override
  final bool successfullySaved;
  @override
  final Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecipeFormState(recipe: $recipe, initialRecipe: $initialRecipe, creatingRecipePageIndex: $creatingRecipePageIndex, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isCreating: $isCreating, isSaving: $isSaving, successfullySaved: $successfullySaved, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeFormState &&
            const DeepCollectionEquality().equals(other.recipe, recipe) &&
            const DeepCollectionEquality()
                .equals(other.initialRecipe, initialRecipe) &&
            const DeepCollectionEquality().equals(
                other.creatingRecipePageIndex, creatingRecipePageIndex) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.isCreating, isCreating) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.successfullySaved, successfullySaved) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipe),
      const DeepCollectionEquality().hash(initialRecipe),
      const DeepCollectionEquality().hash(creatingRecipePageIndex),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isCreating),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(successfullySaved),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$RecipeFormStateCopyWith<_RecipeFormState> get copyWith =>
      __$RecipeFormStateCopyWithImpl<_RecipeFormState>(this, _$identity);
}

abstract class _RecipeFormState implements RecipeFormState {
  const factory _RecipeFormState(
      {required final Recipe recipe,
      required final Recipe initialRecipe,
      required final int creatingRecipePageIndex,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isCreating,
      required final bool isSaving,
      required final bool successfullySaved,
      required final Option<Either<RecipeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_RecipeFormState;

  @override
  Recipe get recipe => throw _privateConstructorUsedError;
  @override
  Recipe get initialRecipe => throw _privateConstructorUsedError;
  @override
  int get creatingRecipePageIndex => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isCreating => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get successfullySaved => throw _privateConstructorUsedError;
  @override
  Option<Either<RecipeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecipeFormStateCopyWith<_RecipeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
