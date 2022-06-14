// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientItemDto> get ingredients => throw _privateConstructorUsedError;
  List<StepItemDto> get steps => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  dynamic get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDtoCopyWith<RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<IngredientItemDto> ingredients,
      List<StepItemDto> steps,
      @ServerTimeStampConverter() dynamic serverTimeStamp});
}

/// @nodoc
class _$RecipeDtoCopyWithImpl<$Res> implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

  final RecipeDto _value;
  // ignore: unused_field
  final $Res Function(RecipeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientItemDto>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepItemDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipeDtoCopyWith<$Res> implements $RecipeDtoCopyWith<$Res> {
  factory _$$_RecipeDtoCopyWith(
          _$_RecipeDto value, $Res Function(_$_RecipeDto) then) =
      __$$_RecipeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<IngredientItemDto> ingredients,
      List<StepItemDto> steps,
      @ServerTimeStampConverter() dynamic serverTimeStamp});
}

/// @nodoc
class __$$_RecipeDtoCopyWithImpl<$Res> extends _$RecipeDtoCopyWithImpl<$Res>
    implements _$$_RecipeDtoCopyWith<$Res> {
  __$$_RecipeDtoCopyWithImpl(
      _$_RecipeDto _value, $Res Function(_$_RecipeDto) _then)
      : super(_value, (v) => _then(v as _$_RecipeDto));

  @override
  _$_RecipeDto get _value => super._value as _$_RecipeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_$_RecipeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientItemDto>,
      steps: steps == freezed
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepItemDto>,
      serverTimeStamp:
          serverTimeStamp == freezed ? _value.serverTimeStamp : serverTimeStamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDto extends _RecipeDto {
  const _$_RecipeDto(
      {required this.id,
      required this.name,
      required final List<IngredientItemDto> ingredients,
      required final List<StepItemDto> steps,
      @ServerTimeStampConverter() this.serverTimeStamp})
      : _ingredients = ingredients,
        _steps = steps,
        super._();

  factory _$_RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<IngredientItemDto> _ingredients;
  @override
  List<IngredientItemDto> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<StepItemDto> _steps;
  @override
  List<StepItemDto> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  @ServerTimeStampConverter()
  final dynamic serverTimeStamp;

  @override
  String toString() {
    return 'RecipeDto(id: $id, name: $name, ingredients: $ingredients, steps: $steps, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(serverTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeDtoCopyWith<_$_RecipeDto> get copyWith =>
      __$$_RecipeDtoCopyWithImpl<_$_RecipeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDtoToJson(this);
  }
}

abstract class _RecipeDto extends RecipeDto {
  const factory _RecipeDto(
          {required final String id,
          required final String name,
          required final List<IngredientItemDto> ingredients,
          required final List<StepItemDto> steps,
          @ServerTimeStampConverter() final dynamic serverTimeStamp}) =
      _$_RecipeDto;
  const _RecipeDto._() : super._();

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$_RecipeDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<IngredientItemDto> get ingredients => throw _privateConstructorUsedError;
  @override
  List<StepItemDto> get steps => throw _privateConstructorUsedError;
  @override
  @ServerTimeStampConverter()
  dynamic get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDtoCopyWith<_$_RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientItemDto _$IngredientItemDtoFromJson(Map<String, dynamic> json) {
  return _IngredientItemDto.fromJson(json);
}

/// @nodoc
mixin _$IngredientItemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientItemDtoCopyWith<IngredientItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientItemDtoCopyWith<$Res> {
  factory $IngredientItemDtoCopyWith(
          IngredientItemDto value, $Res Function(IngredientItemDto) then) =
      _$IngredientItemDtoCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$IngredientItemDtoCopyWithImpl<$Res>
    implements $IngredientItemDtoCopyWith<$Res> {
  _$IngredientItemDtoCopyWithImpl(this._value, this._then);

  final IngredientItemDto _value;
  // ignore: unused_field
  final $Res Function(IngredientItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientItemDtoCopyWith<$Res>
    implements $IngredientItemDtoCopyWith<$Res> {
  factory _$$_IngredientItemDtoCopyWith(_$_IngredientItemDto value,
          $Res Function(_$_IngredientItemDto) then) =
      __$$_IngredientItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$$_IngredientItemDtoCopyWithImpl<$Res>
    extends _$IngredientItemDtoCopyWithImpl<$Res>
    implements _$$_IngredientItemDtoCopyWith<$Res> {
  __$$_IngredientItemDtoCopyWithImpl(
      _$_IngredientItemDto _value, $Res Function(_$_IngredientItemDto) _then)
      : super(_value, (v) => _then(v as _$_IngredientItemDto));

  @override
  _$_IngredientItemDto get _value => super._value as _$_IngredientItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_IngredientItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientItemDto extends _IngredientItemDto {
  const _$_IngredientItemDto({required this.id, required this.name})
      : super._();

  factory _$_IngredientItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'IngredientItemDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientItemDtoCopyWith<_$_IngredientItemDto> get copyWith =>
      __$$_IngredientItemDtoCopyWithImpl<_$_IngredientItemDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientItemDtoToJson(this);
  }
}

abstract class _IngredientItemDto extends IngredientItemDto {
  const factory _IngredientItemDto(
      {required final String id,
      required final String name}) = _$_IngredientItemDto;
  const _IngredientItemDto._() : super._();

  factory _IngredientItemDto.fromJson(Map<String, dynamic> json) =
      _$_IngredientItemDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientItemDtoCopyWith<_$_IngredientItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

StepItemDto _$StepItemDtoFromJson(Map<String, dynamic> json) {
  return _StepItemDto.fromJson(json);
}

/// @nodoc
mixin _$StepItemDto {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepItemDtoCopyWith<StepItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepItemDtoCopyWith<$Res> {
  factory $StepItemDtoCopyWith(
          StepItemDto value, $Res Function(StepItemDto) then) =
      _$StepItemDtoCopyWithImpl<$Res>;
  $Res call({String id, String body});
}

/// @nodoc
class _$StepItemDtoCopyWithImpl<$Res> implements $StepItemDtoCopyWith<$Res> {
  _$StepItemDtoCopyWithImpl(this._value, this._then);

  final StepItemDto _value;
  // ignore: unused_field
  final $Res Function(StepItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StepItemDtoCopyWith<$Res>
    implements $StepItemDtoCopyWith<$Res> {
  factory _$$_StepItemDtoCopyWith(
          _$_StepItemDto value, $Res Function(_$_StepItemDto) then) =
      __$$_StepItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String body});
}

/// @nodoc
class __$$_StepItemDtoCopyWithImpl<$Res> extends _$StepItemDtoCopyWithImpl<$Res>
    implements _$$_StepItemDtoCopyWith<$Res> {
  __$$_StepItemDtoCopyWithImpl(
      _$_StepItemDto _value, $Res Function(_$_StepItemDto) _then)
      : super(_value, (v) => _then(v as _$_StepItemDto));

  @override
  _$_StepItemDto get _value => super._value as _$_StepItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_StepItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepItemDto extends _StepItemDto {
  const _$_StepItemDto({required this.id, required this.body}) : super._();

  factory _$_StepItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_StepItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String body;

  @override
  String toString() {
    return 'StepItemDto(id: $id, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_StepItemDtoCopyWith<_$_StepItemDto> get copyWith =>
      __$$_StepItemDtoCopyWithImpl<_$_StepItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepItemDtoToJson(this);
  }
}

abstract class _StepItemDto extends StepItemDto {
  const factory _StepItemDto(
      {required final String id, required final String body}) = _$_StepItemDto;
  const _StepItemDto._() : super._();

  factory _StepItemDto.fromJson(Map<String, dynamic> json) =
      _$_StepItemDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StepItemDtoCopyWith<_$_StepItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
