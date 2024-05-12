part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.loading() = _Loading;

  const factory CameraState.loaded({
    required CameraController controller,
    required FlashMode flashMode,
    required CameraDescription currentCam,
    required bool hasMultiCam,
  }) = _Loaded;

  const factory CameraState.captured({
    required File photo,
  }) = _Captured;

  const factory CameraState.error() = _Error;

  const factory CameraState.changing() = _Changing;
}
