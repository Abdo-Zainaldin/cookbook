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
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipeReceived value) recipeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
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
abstract class $WatchAllStartedCopyWith<$Res> {
  factory $WatchAllStartedCopyWith(
          WatchAllStarted value, $Res Function(WatchAllStarted) then) =
      _$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllStartedCopyWithImpl<$Res>
    extends _$RecipeWatcherEventCopyWithImpl<$Res>
    implements $WatchAllStartedCopyWith<$Res> {
  _$WatchAllStartedCopyWithImpl(
      WatchAllStarted _value, $Res Function(WatchAllStarted) _then)
      : super(_value, (v) => _then(v as WatchAllStarted));

  @override
  WatchAllStarted get _value => super._value as WatchAllStarted;
}

/// @nodoc

class _$WatchAllStarted implements WatchAllStarted {
  const _$WatchAllStarted();

  @override
  String toString() {
    return 'RecipeWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipeReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipeReceived value) recipeReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements RecipeWatcherEvent {
  const factory WatchAllStarted() = _$WatchAllStarted;
}

/// @nodoc
abstract class $RecipeReceivedCopyWith<$Res> {
  factory $RecipeReceivedCopyWith(
          RecipeReceived value, $Res Function(RecipeReceived) then) =
      _$RecipeReceivedCopyWithImpl<$Res>;
  $Res call({Either<RecipeFailure, KtList<Recipe>> failureOrRecipes});
}

/// @nodoc
class _$RecipeReceivedCopyWithImpl<$Res>
    extends _$RecipeWatcherEventCopyWithImpl<$Res>
    implements $RecipeReceivedCopyWith<$Res> {
  _$RecipeReceivedCopyWithImpl(
      RecipeReceived _value, $Res Function(RecipeReceived) _then)
      : super(_value, (v) => _then(v as RecipeReceived));

  @override
  RecipeReceived get _value => super._value as RecipeReceived;

  @override
  $Res call({
    Object? failureOrRecipes = freezed,
  }) {
    return _then(RecipeReceived(
      failureOrRecipes == freezed
          ? _value.failureOrRecipes
          : failureOrRecipes // ignore: cast_nullable_to_non_nullable
              as Either<RecipeFailure, KtList<Recipe>>,
    ));
  }
}

/// @nodoc

class _$RecipeReceived implements RecipeReceived {
  const _$RecipeReceived(this.failureOrRecipes);

  @override
  final Either<RecipeFailure, KtList<Recipe>> failureOrRecipes;

  @override
  String toString() {
    return 'RecipeWatcherEvent.recipeReceived(failureOrRecipes: $failureOrRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrRecipes, failureOrRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrRecipes));

  @JsonKey(ignore: true)
  @override
  $RecipeReceivedCopyWith<RecipeReceived> get copyWith =>
      _$RecipeReceivedCopyWithImpl<RecipeReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)
        recipeReceived,
  }) {
    return recipeReceived(failureOrRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
  }) {
    return recipeReceived?.call(failureOrRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(Either<RecipeFailure, KtList<Recipe>> failureOrRecipes)?
        recipeReceived,
    required TResult orElse(),
  }) {
    if (recipeReceived != null) {
      return recipeReceived(failureOrRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(RecipeReceived value) recipeReceived,
  }) {
    return recipeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
  }) {
    return recipeReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(RecipeReceived value)? recipeReceived,
    required TResult orElse(),
  }) {
    if (recipeReceived != null) {
      return recipeReceived(this);
    }
    return orElse();
  }
}

abstract class RecipeReceived implements RecipeWatcherEvent {
  const factory RecipeReceived(
          final Either<RecipeFailure, KtList<Recipe>> failureOrRecipes) =
      _$RecipeReceived;

  Either<RecipeFailure, KtList<Recipe>> get failureOrRecipes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeReceivedCopyWith<RecipeReceived> get copyWith =>
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
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
        (other.runtimeType == runtimeType && other is _Initial);
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
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
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
        (other.runtimeType == runtimeType && other is _LoadInProgress);
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
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Recipe> recipes});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_LoadSuccess(
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
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

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
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({RecipeFailure recipeFailure});

  $RecipeFailureCopyWith<$Res> get recipeFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$RecipeWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? recipeFailure = freezed,
  }) {
    return _then(_LoadFailure(
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
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.recipeFailure, recipeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recipeFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

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
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
