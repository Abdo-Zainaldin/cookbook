// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StepItem {
  UniqueId get id => throw _privateConstructorUsedError;
  StepBody get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepItemCopyWith<StepItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepItemCopyWith<$Res> {
  factory $StepItemCopyWith(StepItem value, $Res Function(StepItem) then) =
      _$StepItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, StepBody body});
}

/// @nodoc
class _$StepItemCopyWithImpl<$Res> implements $StepItemCopyWith<$Res> {
  _$StepItemCopyWithImpl(this._value, this._then);

  final StepItem _value;
  // ignore: unused_field
  final $Res Function(StepItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as StepBody,
    ));
  }
}

/// @nodoc
abstract class _$StepItemCopyWith<$Res> implements $StepItemCopyWith<$Res> {
  factory _$StepItemCopyWith(_StepItem value, $Res Function(_StepItem) then) =
      __$StepItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, StepBody body});
}

/// @nodoc
class __$StepItemCopyWithImpl<$Res> extends _$StepItemCopyWithImpl<$Res>
    implements _$StepItemCopyWith<$Res> {
  __$StepItemCopyWithImpl(_StepItem _value, $Res Function(_StepItem) _then)
      : super(_value, (v) => _then(v as _StepItem));

  @override
  _StepItem get _value => super._value as _StepItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_StepItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as StepBody,
    ));
  }
}

/// @nodoc

class _$_StepItem extends _StepItem {
  const _$_StepItem({required this.id, required this.body}) : super._();

  @override
  final UniqueId id;
  @override
  final StepBody body;

  @override
  String toString() {
    return 'StepItem(id: $id, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$StepItemCopyWith<_StepItem> get copyWith =>
      __$StepItemCopyWithImpl<_StepItem>(this, _$identity);
}

abstract class _StepItem extends StepItem {
  const factory _StepItem(
      {required final UniqueId id, required final StepBody body}) = _$_StepItem;
  const _StepItem._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  StepBody get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StepItemCopyWith<_StepItem> get copyWith =>
      throw _privateConstructorUsedError;
}
