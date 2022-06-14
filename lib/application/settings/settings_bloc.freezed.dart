// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) settingsChanged,
    required TResult Function() toggleBetweenCloudAndLocalDB,
    required TResult Function() uploadLocalRecipesToCloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsChanged value) settingsChanged,
    required TResult Function(ToggleBetweenCloudAndLocalDB value)
        toggleBetweenCloudAndLocalDB,
    required TResult Function(UploadLocalRecipesToCloud value)
        uploadLocalRecipesToCloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$$SettingsChangedCopyWith<$Res> {
  factory _$$SettingsChangedCopyWith(
          _$SettingsChanged value, $Res Function(_$SettingsChanged) then) =
      __$$SettingsChangedCopyWithImpl<$Res>;
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$SettingsChangedCopyWith<$Res> {
  __$$SettingsChangedCopyWithImpl(
      _$SettingsChanged _value, $Res Function(_$SettingsChanged) _then)
      : super(_value, (v) => _then(v as _$SettingsChanged));

  @override
  _$SettingsChanged get _value => super._value as _$SettingsChanged;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_$SettingsChanged(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$SettingsChanged implements SettingsChanged {
  const _$SettingsChanged(this.settings);

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsEvent.settingsChanged(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsChanged &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$$SettingsChangedCopyWith<_$SettingsChanged> get copyWith =>
      __$$SettingsChangedCopyWithImpl<_$SettingsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) settingsChanged,
    required TResult Function() toggleBetweenCloudAndLocalDB,
    required TResult Function() uploadLocalRecipesToCloud,
  }) {
    return settingsChanged(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
  }) {
    return settingsChanged?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (settingsChanged != null) {
      return settingsChanged(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsChanged value) settingsChanged,
    required TResult Function(ToggleBetweenCloudAndLocalDB value)
        toggleBetweenCloudAndLocalDB,
    required TResult Function(UploadLocalRecipesToCloud value)
        uploadLocalRecipesToCloud,
  }) {
    return settingsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
  }) {
    return settingsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (settingsChanged != null) {
      return settingsChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsChanged implements SettingsEvent {
  const factory SettingsChanged(final Settings settings) = _$SettingsChanged;

  Settings get settings => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SettingsChangedCopyWith<_$SettingsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleBetweenCloudAndLocalDBCopyWith<$Res> {
  factory _$$ToggleBetweenCloudAndLocalDBCopyWith(
          _$ToggleBetweenCloudAndLocalDB value,
          $Res Function(_$ToggleBetweenCloudAndLocalDB) then) =
      __$$ToggleBetweenCloudAndLocalDBCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleBetweenCloudAndLocalDBCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$ToggleBetweenCloudAndLocalDBCopyWith<$Res> {
  __$$ToggleBetweenCloudAndLocalDBCopyWithImpl(
      _$ToggleBetweenCloudAndLocalDB _value,
      $Res Function(_$ToggleBetweenCloudAndLocalDB) _then)
      : super(_value, (v) => _then(v as _$ToggleBetweenCloudAndLocalDB));

  @override
  _$ToggleBetweenCloudAndLocalDB get _value =>
      super._value as _$ToggleBetweenCloudAndLocalDB;
}

/// @nodoc

class _$ToggleBetweenCloudAndLocalDB implements ToggleBetweenCloudAndLocalDB {
  const _$ToggleBetweenCloudAndLocalDB();

  @override
  String toString() {
    return 'SettingsEvent.toggleBetweenCloudAndLocalDB()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBetweenCloudAndLocalDB);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) settingsChanged,
    required TResult Function() toggleBetweenCloudAndLocalDB,
    required TResult Function() uploadLocalRecipesToCloud,
  }) {
    return toggleBetweenCloudAndLocalDB();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
  }) {
    return toggleBetweenCloudAndLocalDB?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (toggleBetweenCloudAndLocalDB != null) {
      return toggleBetweenCloudAndLocalDB();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsChanged value) settingsChanged,
    required TResult Function(ToggleBetweenCloudAndLocalDB value)
        toggleBetweenCloudAndLocalDB,
    required TResult Function(UploadLocalRecipesToCloud value)
        uploadLocalRecipesToCloud,
  }) {
    return toggleBetweenCloudAndLocalDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
  }) {
    return toggleBetweenCloudAndLocalDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (toggleBetweenCloudAndLocalDB != null) {
      return toggleBetweenCloudAndLocalDB(this);
    }
    return orElse();
  }
}

abstract class ToggleBetweenCloudAndLocalDB implements SettingsEvent {
  const factory ToggleBetweenCloudAndLocalDB() = _$ToggleBetweenCloudAndLocalDB;
}

/// @nodoc
abstract class _$$UploadLocalRecipesToCloudCopyWith<$Res> {
  factory _$$UploadLocalRecipesToCloudCopyWith(
          _$UploadLocalRecipesToCloud value,
          $Res Function(_$UploadLocalRecipesToCloud) then) =
      __$$UploadLocalRecipesToCloudCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadLocalRecipesToCloudCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$UploadLocalRecipesToCloudCopyWith<$Res> {
  __$$UploadLocalRecipesToCloudCopyWithImpl(_$UploadLocalRecipesToCloud _value,
      $Res Function(_$UploadLocalRecipesToCloud) _then)
      : super(_value, (v) => _then(v as _$UploadLocalRecipesToCloud));

  @override
  _$UploadLocalRecipesToCloud get _value =>
      super._value as _$UploadLocalRecipesToCloud;
}

/// @nodoc

class _$UploadLocalRecipesToCloud implements UploadLocalRecipesToCloud {
  const _$UploadLocalRecipesToCloud();

  @override
  String toString() {
    return 'SettingsEvent.uploadLocalRecipesToCloud()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadLocalRecipesToCloud);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) settingsChanged,
    required TResult Function() toggleBetweenCloudAndLocalDB,
    required TResult Function() uploadLocalRecipesToCloud,
  }) {
    return uploadLocalRecipesToCloud();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
  }) {
    return uploadLocalRecipesToCloud?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? settingsChanged,
    TResult Function()? toggleBetweenCloudAndLocalDB,
    TResult Function()? uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (uploadLocalRecipesToCloud != null) {
      return uploadLocalRecipesToCloud();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsChanged value) settingsChanged,
    required TResult Function(ToggleBetweenCloudAndLocalDB value)
        toggleBetweenCloudAndLocalDB,
    required TResult Function(UploadLocalRecipesToCloud value)
        uploadLocalRecipesToCloud,
  }) {
    return uploadLocalRecipesToCloud(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
  }) {
    return uploadLocalRecipesToCloud?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsChanged value)? settingsChanged,
    TResult Function(ToggleBetweenCloudAndLocalDB value)?
        toggleBetweenCloudAndLocalDB,
    TResult Function(UploadLocalRecipesToCloud value)?
        uploadLocalRecipesToCloud,
    required TResult orElse(),
  }) {
    if (uploadLocalRecipesToCloud != null) {
      return uploadLocalRecipesToCloud(this);
    }
    return orElse();
  }
}

abstract class UploadLocalRecipesToCloud implements SettingsEvent {
  const factory UploadLocalRecipesToCloud() = _$UploadLocalRecipesToCloud;
}

/// @nodoc
mixin _$SettingsState {
  Settings get settings => throw _privateConstructorUsedError;
  bool get showUploadInProgress => throw _privateConstructorUsedError;
  Option<Either<SettingsFailure, Unit>> get uploadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {Settings settings,
      bool showUploadInProgress,
      Option<Either<SettingsFailure, Unit>> uploadFailureOrSuccessOption});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? settings = freezed,
    Object? showUploadInProgress = freezed,
    Object? uploadFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      showUploadInProgress: showUploadInProgress == freezed
          ? _value.showUploadInProgress
          : showUploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFailureOrSuccessOption: uploadFailureOrSuccessOption == freezed
          ? _value.uploadFailureOrSuccessOption
          : uploadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettingsFailure, Unit>>,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Settings settings,
      bool showUploadInProgress,
      Option<Either<SettingsFailure, Unit>> uploadFailureOrSuccessOption});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, (v) => _then(v as _$_SettingsState));

  @override
  _$_SettingsState get _value => super._value as _$_SettingsState;

  @override
  $Res call({
    Object? settings = freezed,
    Object? showUploadInProgress = freezed,
    Object? uploadFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_SettingsState(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      showUploadInProgress: showUploadInProgress == freezed
          ? _value.showUploadInProgress
          : showUploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFailureOrSuccessOption: uploadFailureOrSuccessOption == freezed
          ? _value.uploadFailureOrSuccessOption
          : uploadFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SettingsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.settings,
      required this.showUploadInProgress,
      required this.uploadFailureOrSuccessOption});

  @override
  final Settings settings;
  @override
  final bool showUploadInProgress;
  @override
  final Option<Either<SettingsFailure, Unit>> uploadFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsState(settings: $settings, showUploadInProgress: $showUploadInProgress, uploadFailureOrSuccessOption: $uploadFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality()
                .equals(other.showUploadInProgress, showUploadInProgress) &&
            const DeepCollectionEquality().equals(
                other.uploadFailureOrSuccessOption,
                uploadFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(showUploadInProgress),
      const DeepCollectionEquality().hash(uploadFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final Settings settings,
      required final bool showUploadInProgress,
      required final Option<Either<SettingsFailure, Unit>>
          uploadFailureOrSuccessOption}) = _$_SettingsState;

  @override
  Settings get settings => throw _privateConstructorUsedError;
  @override
  bool get showUploadInProgress => throw _privateConstructorUsedError;
  @override
  Option<Either<SettingsFailure, Unit>> get uploadFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
