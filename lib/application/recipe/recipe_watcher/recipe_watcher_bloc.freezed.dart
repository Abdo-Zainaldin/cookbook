// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLocalDB) watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipesReceived value) recipesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeWatcherEventCopyWith<$Res> {
  factory $RecipeWatcherEventCopyWith(
          RecipeWatcherEvent value, $Res Function(RecipeWatcherEvent) then) =
      _$RecipeWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeWatcherEventCopyWithImpl<$Res>
    implements $RecipeWatcherEventCopyWith<$Res> {
  _$RecipeWatcherEventCopyWithImpl(this._value, this._then);

  final RecipeWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeWatcherEvent) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedCopyWith<$Res> {
  factory _$$WatchAllStartedCopyWith(
          _$WatchAllStarted value, $Res Function(_$WatchAllStarted) then) =
      __$$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({bool isLocalDB});
}

/// @nodoc
class __$$WatchAllStartedCopyWithImpl<$Res>
    extends _$RecipeWatcherEventCopyWithImpl<$Res>
    implements _$$WatchAllStartedCopyWith<$Res> {
  __$$WatchAllStartedCopyWithImpl(
      _$WatchAllStarted _value, $Res Function(_$WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$WatchAllStarted));

  @override
  _$WatchAllStarted get _value => super._value as _$WatchAllStarted;

  @override
  $Res call({
    Object? isLocalDB = freezed,
  }) {
    return _then(_$WatchAllStarted(
      isLocalDB: isLocalDB == freezed
          ? _value.isLocalDB
          : isLocalDB // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WatchAllStarted implements WatchAllStarted {
  const _$WatchAllStarted({required this.isLocalDB});

  @override
  final bool isLocalDB;

  @override
  String toString() {
    return 'RecipeWatcherEvent.watchAllStarted(isLocalDB: $isLocalDB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllStarted &&
            const DeepCollectionEquality().equals(other.isLocalDB, isLocalDB));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLocalDB));

  @JsonKey(ignore: true)
  @override
  _$$WatchAllStartedCopyWith<_$WatchAllStarted> get copyWith =>
      __$$WatchAllStartedCopyWithImpl<_$WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLocalDB) watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipesReceived,
  }) {
    return watchAllStarted(isLocalDB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
  }) {
    return watchAllStarted?.call(isLocalDB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(isLocalDB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipesReceived value) recipesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements RecipeWatcherEvent {
  const factory WatchAllStarted({required final bool isLocalDB}) =
      _$WatchAllStarted;

  bool get isLocalDB => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WatchAllStartedCopyWith<_$WatchAllStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesReceivedCopyWith<$Res> {
  factory _$$RecipesReceivedCopyWith(
          _$RecipesReceived value, $Res Function(_$RecipesReceived) then) =
      __$$RecipesReceivedCopyWithImpl<$Res>;
  $Res call({Either<RecipeFailure, KtList<Recipe>> failureOrRecipes});
}

/// @nodoc
class __$$RecipesReceivedCopyWithImpl<$Res>
    extends _$RecipeWatcherEventCopyWithImpl<$Res>
    implements _$$RecipesReceivedCopyWith<$Res> {
  __$$RecipesReceivedCopyWithImpl(
      _$RecipesReceived _value, $Res Function(_$RecipesReceived) _then)
      : super(_value, (v) => _then(v as _$RecipesReceived));

  @override
  _$RecipesReceived get _value => super._value as _$RecipesReceived;

  @override
  $Res call({
    Object? failureOrRecipes = freezed,
  }) {
    return _then(_$RecipesReceived(
      failureOrRecipes == freezed
          ? _value.failureOrRecipes
          : failureOrRecipes // ignore: cast_nullable_to_non_nullable
              as Either<RecipeFailure, KtList<Recipe>>,
    ));
  }
}

/// @nodoc

class _$RecipesReceived implements RecipesReceived {
  const _$RecipesReceived(this.failureOrRecipes);

  @override
  final Either<RecipeFailure, KtList<Recipe>> failureOrRecipes;

  @override
  String toString() {
    return 'RecipeWatcherEvent.recipesReceived(failureOrRecipes: $failureOrRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrRecipes, failureOrRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrRecipes));

  @JsonKey(ignore: true)
  @override
  _$$RecipesReceivedCopyWith<_$RecipesReceived> get copyWith =>
      __$$RecipesReceivedCopyWithImpl<_$RecipesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLocalDB) watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipesReceived,
  }) {
    return recipesReceived(failureOrRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
  }) {
    return recipesReceived?.call(failureOrRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLocalDB)? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipesReceived,
    required TResult orElse(),
  }) {
    if (recipesReceived != null) {
      return recipesReceived(failureOrRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipesReceived value) recipesReceived,
  }) {
    return recipesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
  }) {
    return recipesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipesReceived value)? recipesReceived,
    required TResult orElse(),
  }) {
    if (recipesReceived != null) {
      return recipesReceived(this);
    }
    return orElse();
  }
}

abstract class RecipesReceived implements RecipeWatcherEvent {
  const factory RecipesReceived(
          final Either<RecipeFailure, KtList<Recipe>> failureOrRecipes) =
      _$RecipesReceived;

  Either<RecipeFailure, KtList<Recipe>> get failureOrRecipes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RecipesReceivedCopyWith<_$RecipesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Recipe> recipes) loadSuccess,
    required TResult Function(RecipeFailure recipeFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeWatcherStateCopyWith<$Res> {
  factory $RecipeWatcherStateCopyWith(
          RecipeWatcherState value, $Res Function(RecipeWatcherState) then) =
      _$RecipeWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeWatcherStateCopyWithImpl<$Res>
    implements $RecipeWatcherStateCopyWith<$Res> {
  _$RecipeWatcherStateCopyWithImpl(this._value, this._then);

  final RecipeWatcherState _value;
  // ignore: unused_field
  final $Res Function(RecipeWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RecipeWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Recipe> recipes) loadSuccess,
    required TResult Function(RecipeFailure recipeFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecipeWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RecipeWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Recipe> recipes) loadSuccess,
    required TResult Function(RecipeFailure recipeFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RecipeWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Recipe> recipes});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_$_LoadSuccess(
      recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as KtList<Recipe>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.recipes);

  @override
  final KtList<Recipe> recipes;

  @override
  String toString() {
    return 'RecipeWatcherState.loadSuccess(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Recipe> recipes) loadSuccess,
    required TResult Function(RecipeFailure recipeFailure) loadFailure,
  }) {
    return loadSuccess(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
  }) {
    return loadSuccess?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements RecipeWatcherState {
  const factory _LoadSuccess(final KtList<Recipe> recipes) = _$_LoadSuccess;

  KtList<Recipe> get recipes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({RecipeFailure recipeFailure});

  $RecipeFailureCopyWith<$Res> get recipeFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? recipeFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      recipeFailure == freezed
          ? _value.recipeFailure
          : recipeFailure // ignore: cast_nullable_to_non_nullable
              as RecipeFailure,
    ));
  }

  @override
  $RecipeFailureCopyWith<$Res> get recipeFailure {
    return $RecipeFailureCopyWith<$Res>(_value.recipeFailure, (value) {
      return _then(_value.copyWith(recipeFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.recipeFailure);

  @override
  final RecipeFailure recipeFailure;

  @override
  String toString() {
    return 'RecipeWatcherState.loadFailure(recipeFailure: $recipeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.recipeFailure, recipeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recipeFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Recipe> recipes) loadSuccess,
    required TResult Function(RecipeFailure recipeFailure) loadFailure,
  }) {
    return loadFailure(recipeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
  }) {
    return loadFailure?.call(recipeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Recipe> recipes)? loadSuccess,
    TResult Function(RecipeFailure recipeFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(recipeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements RecipeWatcherState {
  const factory _LoadFailure(final RecipeFailure recipeFailure) =
      _$_LoadFailure;

  RecipeFailure get recipeFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
