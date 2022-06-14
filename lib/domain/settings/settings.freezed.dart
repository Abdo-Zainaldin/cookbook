// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  bool get isUsingLocalRecipes => throw _privateConstructorUsedError;
  String? get appLanguage => throw _privateConstructorUsedError;
  String get appFont => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({bool isUsingLocalRecipes, String? appLanguage, String appFont});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object? isUsingLocalRecipes = freezed,
    Object? appLanguage = freezed,
    Object? appFont = freezed,
  }) {
    return _then(_value.copyWith(
      isUsingLocalRecipes: isUsingLocalRecipes == freezed
          ? _value.isUsingLocalRecipes
          : isUsingLocalRecipes // ignore: cast_nullable_to_non_nullable
              as bool,
      appLanguage: appLanguage == freezed
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      appFont: appFont == freezed
          ? _value.appFont
          : appFont // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool isUsingLocalRecipes, String? appLanguage, String appFont});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, (v) => _then(v as _$_Settings));

  @override
  _$_Settings get _value => super._value as _$_Settings;

  @override
  $Res call({
    Object? isUsingLocalRecipes = freezed,
    Object? appLanguage = freezed,
    Object? appFont = freezed,
  }) {
    return _then(_$_Settings(
      isUsingLocalRecipes: isUsingLocalRecipes == freezed
          ? _value.isUsingLocalRecipes
          : isUsingLocalRecipes // ignore: cast_nullable_to_non_nullable
              as bool,
      appLanguage: appLanguage == freezed
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      appFont: appFont == freezed
          ? _value.appFont
          : appFont // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings implements _Settings {
  const _$_Settings(
      {required this.isUsingLocalRecipes,
      required this.appLanguage,
      required this.appFont});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  final bool isUsingLocalRecipes;
  @override
  final String? appLanguage;
  @override
  final String appFont;

  @override
  String toString() {
    return 'Settings(isUsingLocalRecipes: $isUsingLocalRecipes, appLanguage: $appLanguage, appFont: $appFont)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            const DeepCollectionEquality()
                .equals(other.isUsingLocalRecipes, isUsingLocalRecipes) &&
            const DeepCollectionEquality()
                .equals(other.appLanguage, appLanguage) &&
            const DeepCollectionEquality().equals(other.appFont, appFont));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUsingLocalRecipes),
      const DeepCollectionEquality().hash(appLanguage),
      const DeepCollectionEquality().hash(appFont));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {required final bool isUsingLocalRecipes,
      required final String? appLanguage,
      required final String appFont}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  bool get isUsingLocalRecipes => throw _privateConstructorUsedError;
  @override
  String? get appLanguage => throw _privateConstructorUsedError;
  @override
  String get appFont => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
