// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_recipe_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewRecipeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRecipeFormEventCopyWith<$Res> {
  factory $NewRecipeFormEventCopyWith(
          NewRecipeFormEvent value, $Res Function(NewRecipeFormEvent) then) =
      _$NewRecipeFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewRecipeFormEventCopyWithImpl<$Res>
    implements $NewRecipeFormEventCopyWith<$Res> {
  _$NewRecipeFormEventCopyWithImpl(this._value, this._then);

  final NewRecipeFormEvent _value;
  // ignore: unused_field
  final $Res Function(NewRecipeFormEvent) _then;
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
    extends _$NewRecipeFormEventCopyWithImpl<$Res>
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
    return 'NewRecipeFormEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements NewRecipeFormEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemAddedCopyWith<$Res> {
  factory $RecipeItemAddedCopyWith(
          RecipeItemAdded value, $Res Function(RecipeItemAdded) then) =
      _$RecipeItemAddedCopyWithImpl<$Res>;
  $Res call({dynamic recipeItem});
}

/// @nodoc
class _$RecipeItemAddedCopyWithImpl<$Res>
    extends _$NewRecipeFormEventCopyWithImpl<$Res>
    implements $RecipeItemAddedCopyWith<$Res> {
  _$RecipeItemAddedCopyWithImpl(
      RecipeItemAdded _value, $Res Function(RecipeItemAdded) _then)
      : super(_value, (v) => _then(v as RecipeItemAdded));

  @override
  RecipeItemAdded get _value => super._value as RecipeItemAdded;

  @override
  $Res call({
    Object? recipeItem = freezed,
  }) {
    return _then(RecipeItemAdded(
      recipeItem == freezed
          ? _value.recipeItem
          : recipeItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RecipeItemAdded implements RecipeItemAdded {
  const _$RecipeItemAdded(this.recipeItem);

  @override
  final dynamic recipeItem;

  @override
  String toString() {
    return 'NewRecipeFormEvent.recipeItemAdded(recipeItem: $recipeItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeItemAdded &&
            const DeepCollectionEquality()
                .equals(other.recipeItem, recipeItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipeItem));

  @JsonKey(ignore: true)
  @override
  $RecipeItemAddedCopyWith<RecipeItemAdded> get copyWith =>
      _$RecipeItemAddedCopyWithImpl<RecipeItemAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) {
    return recipeItemAdded(recipeItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) {
    return recipeItemAdded?.call(recipeItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (recipeItemAdded != null) {
      return recipeItemAdded(recipeItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) {
    return recipeItemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) {
    return recipeItemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (recipeItemAdded != null) {
      return recipeItemAdded(this);
    }
    return orElse();
  }
}

abstract class RecipeItemAdded implements NewRecipeFormEvent {
  const factory RecipeItemAdded(final dynamic recipeItem) = _$RecipeItemAdded;

  dynamic get recipeItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeItemAddedCopyWith<RecipeItemAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemRemovedCopyWith<$Res> {
  factory $RecipeItemRemovedCopyWith(
          RecipeItemRemoved value, $Res Function(RecipeItemRemoved) then) =
      _$RecipeItemRemovedCopyWithImpl<$Res>;
  $Res call({dynamic recipeItem});
}

/// @nodoc
class _$RecipeItemRemovedCopyWithImpl<$Res>
    extends _$NewRecipeFormEventCopyWithImpl<$Res>
    implements $RecipeItemRemovedCopyWith<$Res> {
  _$RecipeItemRemovedCopyWithImpl(
      RecipeItemRemoved _value, $Res Function(RecipeItemRemoved) _then)
      : super(_value, (v) => _then(v as RecipeItemRemoved));

  @override
  RecipeItemRemoved get _value => super._value as RecipeItemRemoved;

  @override
  $Res call({
    Object? recipeItem = freezed,
  }) {
    return _then(RecipeItemRemoved(
      recipeItem == freezed
          ? _value.recipeItem
          : recipeItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$RecipeItemRemoved implements RecipeItemRemoved {
  const _$RecipeItemRemoved(this.recipeItem);

  @override
  final dynamic recipeItem;

  @override
  String toString() {
    return 'NewRecipeFormEvent.recipeItemRemoved(recipeItem: $recipeItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeItemRemoved &&
            const DeepCollectionEquality()
                .equals(other.recipeItem, recipeItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipeItem));

  @JsonKey(ignore: true)
  @override
  $RecipeItemRemovedCopyWith<RecipeItemRemoved> get copyWith =>
      _$RecipeItemRemovedCopyWithImpl<RecipeItemRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) {
    return recipeItemRemoved(recipeItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) {
    return recipeItemRemoved?.call(recipeItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (recipeItemRemoved != null) {
      return recipeItemRemoved(recipeItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) {
    return recipeItemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) {
    return recipeItemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (recipeItemRemoved != null) {
      return recipeItemRemoved(this);
    }
    return orElse();
  }
}

abstract class RecipeItemRemoved implements NewRecipeFormEvent {
  const factory RecipeItemRemoved(final dynamic recipeItem) =
      _$RecipeItemRemoved;

  dynamic get recipeItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeItemRemovedCopyWith<RecipeItemRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemChangedCopyWith<$Res> {
  factory $RecipeItemChangedCopyWith(
          RecipeItemChanged value, $Res Function(RecipeItemChanged) then) =
      _$RecipeItemChangedCopyWithImpl<$Res>;
  $Res call({int index, dynamic recipeItem, String body});
}

/// @nodoc
class _$RecipeItemChangedCopyWithImpl<$Res>
    extends _$NewRecipeFormEventCopyWithImpl<$Res>
    implements $RecipeItemChangedCopyWith<$Res> {
  _$RecipeItemChangedCopyWithImpl(
      RecipeItemChanged _value, $Res Function(RecipeItemChanged) _then)
      : super(_value, (v) => _then(v as RecipeItemChanged));

  @override
  RecipeItemChanged get _value => super._value as RecipeItemChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? recipeItem = freezed,
    Object? body = freezed,
  }) {
    return _then(RecipeItemChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      recipeItem == freezed
          ? _value.recipeItem
          : recipeItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeItemChanged implements RecipeItemChanged {
  const _$RecipeItemChanged(this.index, this.recipeItem, this.body);

  @override
  final int index;
  @override
  final dynamic recipeItem;
  @override
  final String body;

  @override
  String toString() {
    return 'NewRecipeFormEvent.recipeItemChanged(index: $index, recipeItem: $recipeItem, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeItemChanged &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.recipeItem, recipeItem) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(recipeItem),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  $RecipeItemChangedCopyWith<RecipeItemChanged> get copyWith =>
      _$RecipeItemChangedCopyWithImpl<RecipeItemChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) {
    return recipeItemChanged(index, recipeItem, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) {
    return recipeItemChanged?.call(index, recipeItem, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (recipeItemChanged != null) {
      return recipeItemChanged(index, recipeItem, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) {
    return recipeItemChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) {
    return recipeItemChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (recipeItemChanged != null) {
      return recipeItemChanged(this);
    }
    return orElse();
  }
}

abstract class RecipeItemChanged implements NewRecipeFormEvent {
  const factory RecipeItemChanged(
          final int index, final dynamic recipeItem, final String body) =
      _$RecipeItemChanged;

  int get index => throw _privateConstructorUsedError;
  dynamic get recipeItem => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeItemChangedCopyWith<RecipeItemChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$NewRecipeFormEventCopyWithImpl<$Res>
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
    return 'NewRecipeFormEvent.saved()';
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
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(dynamic recipeItem) recipeItemAdded,
    required TResult Function(dynamic recipeItem) recipeItemRemoved,
    required TResult Function(int index, dynamic recipeItem, String body)
        recipeItemChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(dynamic recipeItem)? recipeItemAdded,
    TResult Function(dynamic recipeItem)? recipeItemRemoved,
    TResult Function(int index, dynamic recipeItem, String body)?
        recipeItemChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RecipeItemAdded value) recipeItemAdded,
    required TResult Function(RecipeItemRemoved value) recipeItemRemoved,
    required TResult Function(RecipeItemChanged value) recipeItemChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RecipeItemAdded value)? recipeItemAdded,
    TResult Function(RecipeItemRemoved value)? recipeItemRemoved,
    TResult Function(RecipeItemChanged value)? recipeItemChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements NewRecipeFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$NewRecipeFormState {
  Recipe get recipe => throw _privateConstructorUsedError;
  KtList<IngredientItemPrimitive> get ingredientItemPrimitives =>
      throw _privateConstructorUsedError;
  KtList<StepItemPrimitive> get stepItemPrimitives =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<RecipeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewRecipeFormStateCopyWith<NewRecipeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRecipeFormStateCopyWith<$Res> {
  factory $NewRecipeFormStateCopyWith(
          NewRecipeFormState value, $Res Function(NewRecipeFormState) then) =
      _$NewRecipeFormStateCopyWithImpl<$Res>;
  $Res call(
      {Recipe recipe,
      KtList<IngredientItemPrimitive> ingredientItemPrimitives,
      KtList<StepItemPrimitive> stepItemPrimitives,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$NewRecipeFormStateCopyWithImpl<$Res>
    implements $NewRecipeFormStateCopyWith<$Res> {
  _$NewRecipeFormStateCopyWithImpl(this._value, this._then);

  final NewRecipeFormState _value;
  // ignore: unused_field
  final $Res Function(NewRecipeFormState) _then;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? ingredientItemPrimitives = freezed,
    Object? stepItemPrimitives = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      ingredientItemPrimitives: ingredientItemPrimitives == freezed
          ? _value.ingredientItemPrimitives
          : ingredientItemPrimitives // ignore: cast_nullable_to_non_nullable
              as KtList<IngredientItemPrimitive>,
      stepItemPrimitives: stepItemPrimitives == freezed
          ? _value.stepItemPrimitives
          : stepItemPrimitives // ignore: cast_nullable_to_non_nullable
              as KtList<StepItemPrimitive>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$NewRecipeFormStateCopyWith<$Res>
    implements $NewRecipeFormStateCopyWith<$Res> {
  factory _$NewRecipeFormStateCopyWith(
          _NewRecipeFormState value, $Res Function(_NewRecipeFormState) then) =
      __$NewRecipeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Recipe recipe,
      KtList<IngredientItemPrimitive> ingredientItemPrimitives,
      KtList<StepItemPrimitive> stepItemPrimitives,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$NewRecipeFormStateCopyWithImpl<$Res>
    extends _$NewRecipeFormStateCopyWithImpl<$Res>
    implements _$NewRecipeFormStateCopyWith<$Res> {
  __$NewRecipeFormStateCopyWithImpl(
      _NewRecipeFormState _value, $Res Function(_NewRecipeFormState) _then)
      : super(_value, (v) => _then(v as _NewRecipeFormState));

  @override
  _NewRecipeFormState get _value => super._value as _NewRecipeFormState;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? ingredientItemPrimitives = freezed,
    Object? stepItemPrimitives = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NewRecipeFormState(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      ingredientItemPrimitives: ingredientItemPrimitives == freezed
          ? _value.ingredientItemPrimitives
          : ingredientItemPrimitives // ignore: cast_nullable_to_non_nullable
              as KtList<IngredientItemPrimitive>,
      stepItemPrimitives: stepItemPrimitives == freezed
          ? _value.stepItemPrimitives
          : stepItemPrimitives // ignore: cast_nullable_to_non_nullable
              as KtList<StepItemPrimitive>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RecipeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NewRecipeFormState implements _NewRecipeFormState {
  const _$_NewRecipeFormState(
      {required this.recipe,
      required this.ingredientItemPrimitives,
      required this.stepItemPrimitives,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Recipe recipe;
  @override
  final KtList<IngredientItemPrimitive> ingredientItemPrimitives;
  @override
  final KtList<StepItemPrimitive> stepItemPrimitives;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NewRecipeFormState(recipe: $recipe, ingredientItemPrimitives: $ingredientItemPrimitives, stepItemPrimitives: $stepItemPrimitives, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewRecipeFormState &&
            const DeepCollectionEquality().equals(other.recipe, recipe) &&
            const DeepCollectionEquality().equals(
                other.ingredientItemPrimitives, ingredientItemPrimitives) &&
            const DeepCollectionEquality()
                .equals(other.stepItemPrimitives, stepItemPrimitives) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipe),
      const DeepCollectionEquality().hash(ingredientItemPrimitives),
      const DeepCollectionEquality().hash(stepItemPrimitives),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$NewRecipeFormStateCopyWith<_NewRecipeFormState> get copyWith =>
      __$NewRecipeFormStateCopyWithImpl<_NewRecipeFormState>(this, _$identity);
}

abstract class _NewRecipeFormState implements NewRecipeFormState {
  const factory _NewRecipeFormState(
      {required final Recipe recipe,
      required final KtList<IngredientItemPrimitive> ingredientItemPrimitives,
      required final KtList<StepItemPrimitive> stepItemPrimitives,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final Option<Either<RecipeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NewRecipeFormState;

  @override
  Recipe get recipe => throw _privateConstructorUsedError;
  @override
  KtList<IngredientItemPrimitive> get ingredientItemPrimitives =>
      throw _privateConstructorUsedError;
  @override
  KtList<StepItemPrimitive> get stepItemPrimitives =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<RecipeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewRecipeFormStateCopyWith<_NewRecipeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
