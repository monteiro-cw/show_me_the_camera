// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CameraState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CameraState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call(
      {CameraController controller,
      FlashMode flashMode,
      CameraDescription currentCam,
      bool hasMultiCam});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? controller = freezed,
    Object? flashMode = freezed,
    Object? currentCam = freezed,
    Object? hasMultiCam = freezed,
  }) {
    return _then(_$_Loaded(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      flashMode: flashMode == freezed
          ? _value.flashMode
          : flashMode // ignore: cast_nullable_to_non_nullable
              as FlashMode,
      currentCam: currentCam == freezed
          ? _value.currentCam
          : currentCam // ignore: cast_nullable_to_non_nullable
              as CameraDescription,
      hasMultiCam: hasMultiCam == freezed
          ? _value.hasMultiCam
          : hasMultiCam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.controller,
      required this.flashMode,
      required this.currentCam,
      required this.hasMultiCam});

  @override
  final CameraController controller;
  @override
  final FlashMode flashMode;
  @override
  final CameraDescription currentCam;
  @override
  final bool hasMultiCam;

  @override
  String toString() {
    return 'CameraState.loaded(controller: $controller, flashMode: $flashMode, currentCam: $currentCam, hasMultiCam: $hasMultiCam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            const DeepCollectionEquality().equals(other.flashMode, flashMode) &&
            const DeepCollectionEquality()
                .equals(other.currentCam, currentCam) &&
            const DeepCollectionEquality()
                .equals(other.hasMultiCam, hasMultiCam));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controller),
      const DeepCollectionEquality().hash(flashMode),
      const DeepCollectionEquality().hash(currentCam),
      const DeepCollectionEquality().hash(hasMultiCam));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) {
    return loaded(controller, flashMode, currentCam, hasMultiCam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) {
    return loaded?.call(controller, flashMode, currentCam, hasMultiCam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(controller, flashMode, currentCam, hasMultiCam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CameraState {
  const factory _Loaded(
      {required final CameraController controller,
      required final FlashMode flashMode,
      required final CameraDescription currentCam,
      required final bool hasMultiCam}) = _$_Loaded;

  CameraController get controller;
  FlashMode get flashMode;
  CameraDescription get currentCam;
  bool get hasMultiCam;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CapturedCopyWith<$Res> {
  factory _$$_CapturedCopyWith(
          _$_Captured value, $Res Function(_$_Captured) then) =
      __$$_CapturedCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$$_CapturedCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$$_CapturedCopyWith<$Res> {
  __$$_CapturedCopyWithImpl(
      _$_Captured _value, $Res Function(_$_Captured) _then)
      : super(_value, (v) => _then(v as _$_Captured));

  @override
  _$_Captured get _value => super._value as _$_Captured;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_$_Captured(
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_Captured implements _Captured {
  const _$_Captured({required this.photo});

  @override
  final File photo;

  @override
  String toString() {
    return 'CameraState.captured(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Captured &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  _$$_CapturedCopyWith<_$_Captured> get copyWith =>
      __$$_CapturedCopyWithImpl<_$_Captured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) {
    return captured(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) {
    return captured?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) {
    return captured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) {
    return captured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured(this);
    }
    return orElse();
  }
}

abstract class _Captured implements CameraState {
  const factory _Captured({required final File photo}) = _$_Captured;

  File get photo;
  @JsonKey(ignore: true)
  _$$_CapturedCopyWith<_$_Captured> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CameraState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CameraState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_ChangingCopyWith<$Res> {
  factory _$$_ChangingCopyWith(
          _$_Changing value, $Res Function(_$_Changing) then) =
      __$$_ChangingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangingCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$$_ChangingCopyWith<$Res> {
  __$$_ChangingCopyWithImpl(
      _$_Changing _value, $Res Function(_$_Changing) _then)
      : super(_value, (v) => _then(v as _$_Changing));

  @override
  _$_Changing get _value => super._value as _$_Changing;
}

/// @nodoc

class _$_Changing implements _Changing {
  const _$_Changing();

  @override
  String toString() {
    return 'CameraState.changing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Changing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)
        loaded,
    required TResult Function(File photo) captured,
    required TResult Function() error,
    required TResult Function() changing,
  }) {
    return changing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
  }) {
    return changing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CameraController controller, FlashMode flashMode,
            CameraDescription currentCam, bool hasMultiCam)?
        loaded,
    TResult Function(File photo)? captured,
    TResult Function()? error,
    TResult Function()? changing,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Error value) error,
    required TResult Function(_Changing value) changing,
  }) {
    return changing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
  }) {
    return changing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Captured value)? captured,
    TResult Function(_Error value)? error,
    TResult Function(_Changing value)? changing,
    required TResult orElse(),
  }) {
    if (changing != null) {
      return changing(this);
    }
    return orElse();
  }
}

abstract class _Changing implements CameraState {
  const factory _Changing() = _$_Changing;
}
