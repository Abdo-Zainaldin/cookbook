// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Recipe> recipes) initialRecipesChanged,
    required TResult Function(List<String> ingredients)
        filterIngredientsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipesChanged value)
        initialRecipesChanged,
    required TResult Function(FilterIngredientsChanged value)
        filterIngredientsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFilterEventCopyWith<$Res> {
  factory $RecipeFilterEventCopyWith(
          RecipeFilterEvent value, $Res Function(RecipeFilterEvent) then) =
      _$RecipeFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeFilterEventCopyWithImpl<$Res>
    implements $RecipeFilterEventCopyWith<$Res> {
  _$RecipeFilterEventCopyWithImpl(this._value, this._then);

  final RecipeFilterEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeFilterEvent) _then;
}

/// @nodoc
abstract class $InitialRecipesChangedCopyWith<$Res> {
  factory $InitialRecipesChangedCopyWith(InitialRecipesChanged value,
          $Res Function(InitialRecipesChanged) then) =
      _$InitialRecipesChangedCopyWithImpl<$Res>;
  $Res call({KtList<Recipe> recipes});
}

/// @nodoc
class _$InitialRecipesChangedCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res>
    implements $InitialRecipesChangedCopyWith<$Res> {
  _$InitialRecipesChangedCopyWithImpl(
      InitialRecipesChanged _value, $Res Function(InitialRecipesChanged) _then)
      : super(_value, (v) => _then(v as InitialRecipesChanged));

  @override
  InitialRecipesChanged get _value => super._value as InitialRecipesChanged;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(InitialRecipesChanged(
      recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
    ));
  }
}

/// @nodoc

class _$InitialRecipesChanged implements InitialRecipesChanged {
  const _$InitialRecipesChanged(this.recipes);

  @override
  final KtList<Recipe> recipes;

  @override
  String toString() {
    return 'RecipeFilterEvent.initialRecipesChanged(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialRecipesChanged &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  $InitialRecipesChangedCopyWith<InitialRecipesChanged> get copyWith =>
      _$InitialRecipesChangedCopyWithImpl<InitialRecipesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Recipe> recipes) initialRecipesChanged,
    required TResult Function(List<String> ingredients)
        filterIngredientsChanged,
  }) {
    return initialRecipesChanged(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
  }) {
    return initialRecipesChanged?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
    required TResult orElse(),
  }) {
    if (initialRecipesChanged != null) {
      return initialRecipesChanged(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipesChanged value)
        initialRecipesChanged,
    required TResult Function(FilterIngredientsChanged value)
        filterIngredientsChanged,
  }) {
    return initialRecipesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
  }) {
    return initialRecipesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
    required TResult orElse(),
  }) {
    if (initialRecipesChanged != null) {
      return initialRecipesChanged(this);
    }
    return orElse();
  }
}

abstract class InitialRecipesChanged implements RecipeFilterEvent {
  const factory InitialRecipesChanged(final KtList<Recipe> recipes) =
      _$InitialRecipesChanged;

  KtList<Recipe> get recipes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialRecipesChangedCopyWith<InitialRecipesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterIngredientsChangedCopyWith<$Res> {
  factory $FilterIngredientsChangedCopyWith(FilterIngredientsChanged value,
          $Res Function(FilterIngredientsChanged) then) =
      _$FilterIngredientsChangedCopyWithImpl<$Res>;
  $Res call({List<String> ingredients});
}

/// @nodoc
class _$FilterIngredientsChangedCopyWithImpl<$Res>
    extends _$RecipeFilterEventCopyWithImpl<$Res>
    implements $FilterIngredientsChangedCopyWith<$Res> {
  _$FilterIngredientsChangedCopyWithImpl(FilterIngredientsChanged _value,
      $Res Function(FilterIngredientsChanged) _then)
      : super(_value, (v) => _then(v as FilterIngredientsChanged));

  @override
  FilterIngredientsChanged get _value =>
      super._value as FilterIngredientsChanged;

  @override
  $Res call({
    Object? ingredients = freezed,
  }) {
    return _then(FilterIngredientsChanged(
      ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FilterIngredientsChanged implements FilterIngredientsChanged {
  const _$FilterIngredientsChanged(final List<String> ingredients)
      : _ingredients = ingredients;

  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'RecipeFilterEvent.filterIngredientsChanged(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterIngredientsChanged &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(ingredients));

  @JsonKey(ignore: true)
  @override
  $FilterIngredientsChangedCopyWith<FilterIngredientsChanged> get copyWith =>
      _$FilterIngredientsChangedCopyWithImpl<FilterIngredientsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Recipe> recipes) initialRecipesChanged,
    required TResult Function(List<String> ingredients)
        filterIngredientsChanged,
  }) {
    return filterIngredientsChanged(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
  }) {
    return filterIngredientsChanged?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Recipe> recipes)? initialRecipesChanged,
    TResult Function(List<String> ingredients)? filterIngredientsChanged,
    required TResult orElse(),
  }) {
    if (filterIngredientsChanged != null) {
      return filterIngredientsChanged(ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRecipesChanged value)
        initialRecipesChanged,
    required TResult Function(FilterIngredientsChanged value)
        filterIngredientsChanged,
  }) {
    return filterIngredientsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
  }) {
    return filterIngredientsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRecipesChanged value)? initialRecipesChanged,
    TResult Function(FilterIngredientsChanged value)? filterIngredientsChanged,
    required TResult orElse(),
  }) {
    if (filterIngredientsChanged != null) {
      return filterIngredientsChanged(this);
    }
    return orElse();
  }
}

abstract class FilterIngredientsChanged implements RecipeFilterEvent {
  const factory FilterIngredientsChanged(final List<String> ingredients) =
      _$FilterIngredientsChanged;

  List<String> get ingredients => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterIngredientsChangedCopyWith<FilterIngredientsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeFilterState {
  KtList<Recipe> get initialRecipes => throw _privateConstructorUsedError;
  List<String> get filterIngdredients => throw _privateConstructorUsedError;
  KtList<Recipe> get filteredRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeFilterStateCopyWith<RecipeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFilterStateCopyWith<$Res> {
  factory $RecipeFilterStateCopyWith(
          RecipeFilterState value, $Res Function(RecipeFilterState) then) =
      _$RecipeFilterStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Recipe> initialRecipes,
      List<String> filterIngdredients,
      KtList<Recipe> filteredRecipes});
}

/// @nodoc
class _$RecipeFilterStateCopyWithImpl<$Res>
    implements $RecipeFilterStateCopyWith<$Res> {
  _$RecipeFilterStateCopyWithImpl(this._value, this._then);

  final RecipeFilterState _value;
  // ignore: unused_field
  final $Res Function(RecipeFilterState) _then;

  @override
  $Res call({
    Object? initialRecipes = freezed,
    Object? filterIngdredients = freezed,
    Object? filteredRecipes = freezed,
  }) {
    return _then(_value.copyWith(
      initialRecipes: initialRecipes == freezed
          ? _value.initialRecipes
          : initialRecipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
      filterIngdredients: filterIngdredients == freezed
          ? _value.filterIngdredients
          : filterIngdredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filteredRecipes: filteredRecipes == freezed
          ? _value.filteredRecipes
          : filteredRecipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
    ));
  }
}

/// @nodoc
abstract class _$RecipeFilterStateCopyWith<$Res>
    implements $RecipeFilterStateCopyWith<$Res> {
  factory _$RecipeFilterStateCopyWith(
          _RecipeFilterState value, $Res Function(_RecipeFilterState) then) =
      __$RecipeFilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Recipe> initialRecipes,
      List<String> filterIngdredients,
      KtList<Recipe> filteredRecipes});
}

/// @nodoc
class __$RecipeFilterStateCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res>
    implements _$RecipeFilterStateCopyWith<$Res> {
  __$RecipeFilterStateCopyWithImpl(
      _RecipeFilterState _value, $Res Function(_RecipeFilterState) _then)
      : super(_value, (v) => _then(v as _RecipeFilterState));

  @override
  _RecipeFilterState get _value => super._value as _RecipeFilterState;

  @override
  $Res call({
    Object? initialRecipes = freezed,
    Object? filterIngdredients = freezed,
    Object? filteredRecipes = freezed,
  }) {
    return _then(_RecipeFilterState(
      initialRecipes: initialRecipes == freezed
          ? _value.initialRecipes
          : initialRecipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
      filterIngdredients: filterIngdredients == freezed
          ? _value.filterIngdredients
          : filterIngdredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filteredRecipes: filteredRecipes == freezed
          ? _value.filteredRecipes
          : filteredRecipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
    ));
  }
}

/// @nodoc

class _$_RecipeFilterState implements _RecipeFilterState {
  const _$_RecipeFilterState(
      {required this.initialRecipes,
      required final List<String> filterIngdredients,
      required this.filteredRecipes})
      : _filterIngdredients = filterIngdredients;

  @override
  final KtList<Recipe> initialRecipes;
  final List<String> _filterIngdredients;
  @override
  List<String> get filterIngdredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterIngdredients);
  }

  @override
  final KtList<Recipe> filteredRecipes;

  @override
  String toString() {
    return 'RecipeFilterState(initialRecipes: $initialRecipes, filterIngdredients: $filterIngdredients, filteredRecipes: $filteredRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeFilterState &&
            const DeepCollectionEquality()
                .equals(other.initialRecipes, initialRecipes) &&
            const DeepCollectionEquality()
                .equals(other.filterIngdredients, filterIngdredients) &&
            const DeepCollectionEquality()
                .equals(other.filteredRecipes, filteredRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialRecipes),
      const DeepCollectionEquality().hash(filterIngdredients),
      const DeepCollectionEquality().hash(filteredRecipes));

  @JsonKey(ignore: true)
  @override
  _$RecipeFilterStateCopyWith<_RecipeFilterState> get copyWith =>
      __$RecipeFilterStateCopyWithImpl<_RecipeFilterState>(this, _$identity);
}

abstract class _RecipeFilterState implements RecipeFilterState {
  const factory _RecipeFilterState(
      {required final KtList<Recipe> initialRecipes,
      required final List<String> filterIngdredients,
      required final KtList<Recipe> filteredRecipes}) = _$_RecipeFilterState;

  @override
  KtList<Recipe> get initialRecipes => throw _privateConstructorUsedError;
  @override
  List<String> get filterIngdredients => throw _privateConstructorUsedError;
  @override
  KtList<Recipe> get filteredRecipes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecipeFilterStateCopyWith<_RecipeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
