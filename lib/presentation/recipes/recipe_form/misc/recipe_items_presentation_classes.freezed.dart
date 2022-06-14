// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_items_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientItemPrimitive {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientItemPrimitiveCopyWith<IngredientItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientItemPrimitiveCopyWith<$Res> {
  factory $IngredientItemPrimitiveCopyWith(IngredientItemPrimitive value,
          $Res Function(IngredientItemPrimitive) then) =
      _$IngredientItemPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name});
}

/// @nodoc
class _$IngredientItemPrimitiveCopyWithImpl<$Res>
    implements $IngredientItemPrimitiveCopyWith<$Res> {
  _$IngredientItemPrimitiveCopyWithImpl(this._value, this._then);

  final IngredientItemPrimitive _value;
  // ignore: unused_field
  final $Res Function(IngredientItemPrimitive) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientItemPrimitiveCopyWith<$Res>
    implements $IngredientItemPrimitiveCopyWith<$Res> {
  factory _$$_IngredientItemPrimitiveCopyWith(_$_IngredientItemPrimitive value,
          $Res Function(_$_IngredientItemPrimitive) then) =
      __$$_IngredientItemPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name});
}

/// @nodoc
class __$$_IngredientItemPrimitiveCopyWithImpl<$Res>
    extends _$IngredientItemPrimitiveCopyWithImpl<$Res>
    implements _$$_IngredientItemPrimitiveCopyWith<$Res> {
  __$$_IngredientItemPrimitiveCopyWithImpl(_$_IngredientItemPrimitive _value,
      $Res Function(_$_IngredientItemPrimitive) _then)
      : super(_value, (v) => _then(v as _$_IngredientItemPrimitive));

  @override
  _$_IngredientItemPrimitive get _value =>
      super._value as _$_IngredientItemPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_IngredientItemPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IngredientItemPrimitive extends _IngredientItemPrimitive
    with DiagnosticableTreeMixin {
  const _$_IngredientItemPrimitive({required this.id, required this.name})
      : super._();

  @override
  final UniqueId id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IngredientItemPrimitive(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IngredientItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientItemPrimitive &&
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
  _$$_IngredientItemPrimitiveCopyWith<_$_IngredientItemPrimitive>
      get copyWith =>
          __$$_IngredientItemPrimitiveCopyWithImpl<_$_IngredientItemPrimitive>(
              this, _$identity);
}

abstract class _IngredientItemPrimitive extends IngredientItemPrimitive {
  const factory _IngredientItemPrimitive(
      {required final UniqueId id,
      required final String name}) = _$_IngredientItemPrimitive;
  const _IngredientItemPrimitive._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientItemPrimitiveCopyWith<_$_IngredientItemPrimitive>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StepItemPrimitive {
  UniqueId get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepItemPrimitiveCopyWith<StepItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepItemPrimitiveCopyWith<$Res> {
  factory $StepItemPrimitiveCopyWith(
          StepItemPrimitive value, $Res Function(StepItemPrimitive) then) =
      _$StepItemPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, String body});
}

/// @nodoc
class _$StepItemPrimitiveCopyWithImpl<$Res>
    implements $StepItemPrimitiveCopyWith<$Res> {
  _$StepItemPrimitiveCopyWithImpl(this._value, this._then);

  final StepItemPrimitive _value;
  // ignore: unused_field
  final $Res Function(StepItemPrimitive) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StepItemPrimitiveCopyWith<$Res>
    implements $StepItemPrimitiveCopyWith<$Res> {
  factory _$$_StepItemPrimitiveCopyWith(_$_StepItemPrimitive value,
          $Res Function(_$_StepItemPrimitive) then) =
      __$$_StepItemPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String body});
}

/// @nodoc
class __$$_StepItemPrimitiveCopyWithImpl<$Res>
    extends _$StepItemPrimitiveCopyWithImpl<$Res>
    implements _$$_StepItemPrimitiveCopyWith<$Res> {
  __$$_StepItemPrimitiveCopyWithImpl(
      _$_StepItemPrimitive _value, $Res Function(_$_StepItemPrimitive) _then)
      : super(_value, (v) => _then(v as _$_StepItemPrimitive));

  @override
  _$_StepItemPrimitive get _value => super._value as _$_StepItemPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_StepItemPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StepItemPrimitive extends _StepItemPrimitive
    with DiagnosticableTreeMixin {
  const _$_StepItemPrimitive({required this.id, required this.body})
      : super._();

  @override
  final UniqueId id;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StepItemPrimitive(id: $id, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StepItemPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepItemPrimitive &&
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
  _$$_StepItemPrimitiveCopyWith<_$_StepItemPrimitive> get copyWith =>
      __$$_StepItemPrimitiveCopyWithImpl<_$_StepItemPrimitive>(
          this, _$identity);
}

abstract class _StepItemPrimitive extends StepItemPrimitive {
  const factory _StepItemPrimitive(
      {required final UniqueId id,
      required final String body}) = _$_StepItemPrimitive;
  const _StepItemPrimitive._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StepItemPrimitiveCopyWith<_$_StepItemPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
