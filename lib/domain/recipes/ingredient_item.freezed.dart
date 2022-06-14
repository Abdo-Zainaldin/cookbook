// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientItem {
  UniqueId get id => throw _privateConstructorUsedError;
  IngredientName get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientItemCopyWith<IngredientItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientItemCopyWith<$Res> {
  factory $IngredientItemCopyWith(
          IngredientItem value, $Res Function(IngredientItem) then) =
      _$IngredientItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, IngredientName name});
}

/// @nodoc
class _$IngredientItemCopyWithImpl<$Res>
    implements $IngredientItemCopyWith<$Res> {
  _$IngredientItemCopyWithImpl(this._value, this._then);

  final IngredientItem _value;
  // ignore: unused_field
  final $Res Function(IngredientItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientItemCopyWith<$Res>
    implements $IngredientItemCopyWith<$Res> {
  factory _$$_IngredientItemCopyWith(
          _$_IngredientItem value, $Res Function(_$_IngredientItem) then) =
      __$$_IngredientItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, IngredientName name});
}

/// @nodoc
class __$$_IngredientItemCopyWithImpl<$Res>
    extends _$IngredientItemCopyWithImpl<$Res>
    implements _$$_IngredientItemCopyWith<$Res> {
  __$$_IngredientItemCopyWithImpl(
      _$_IngredientItem _value, $Res Function(_$_IngredientItem) _then)
      : super(_value, (v) => _then(v as _$_IngredientItem));

  @override
  _$_IngredientItem get _value => super._value as _$_IngredientItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_IngredientItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
    ));
  }
}

/// @nodoc

class _$_IngredientItem extends _IngredientItem {
  const _$_IngredientItem({required this.id, required this.name}) : super._();

  @override
  final UniqueId id;
  @override
  final IngredientName name;

  @override
  String toString() {
    return 'IngredientItem(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientItemCopyWith<_$_IngredientItem> get copyWith =>
      __$$_IngredientItemCopyWithImpl<_$_IngredientItem>(this, _$identity);
}

abstract class _IngredientItem extends IngredientItem {
  const factory _IngredientItem(
      {required final UniqueId id,
      required final IngredientName name}) = _$_IngredientItem;
  const _IngredientItem._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  IngredientName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientItemCopyWith<_$_IngredientItem> get copyWith =>
      throw _privateConstructorUsedError;
}
