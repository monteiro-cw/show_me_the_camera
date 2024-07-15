// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.loading() = _Loading;

  const factory CameraState.loaded({
    required CameraConfig cameraConfig,
  }) = _Loaded;

  const factory CameraState.error() = _Error;

  const factory CameraState.changing() = _Changing;
}

class CameraConfig {
  final CameraController controller;
  final FlashMode flashMode;
  final CameraDescription currentCam;
  final bool hasMultiCam;
  final File? photoCaptured;

  CameraConfig({
    required this.controller,
    required this.flashMode,
    required this.currentCam,
    required this.hasMultiCam,
    this.photoCaptured,
  });

  CameraConfig copyWith({
    CameraController? controller,
    FlashMode? flashMode,
    CameraDescription? currentCam,
    bool? hasMultiCam,
    File? photoCaptured,
  }) {
    return CameraConfig(
      controller: controller ?? this.controller,
      flashMode: flashMode ?? this.flashMode,
      currentCam: currentCam ?? this.currentCam,
      hasMultiCam: hasMultiCam ?? this.hasMultiCam,
      photoCaptured: photoCaptured ?? this.photoCaptured,
    );
  }
}
