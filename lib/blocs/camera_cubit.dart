import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../camera_arrange.dart';

part 'camera_state.dart';
part 'camera_cubit.freezed.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(const CameraState.loading());

  late final CameraArrange _cameraArrange;
  List<CameraDescription> _availableCameras = [];

  Future<void> init() async {
    try {
      final result = await availableCameras();
      _availableCameras = result;
      _cameraArrange = CameraArrange.fromList(_availableCameras);
      final newController = await _createAndInitController(
        _availableCameras.first,
      );

      if (newController == null) {
        emit(const CameraState.error());

        return;
      }

      emit(
        CameraState.loaded(
          controller: newController,
          flashMode: FlashMode.off,
          currentCam: _cameraArrange.getFirst(),
          hasMultiCam: _cameraArrange.hasMulticam,
        ),
      );
    } catch (_) {
      emit(const CameraState.error());
      // do not change the state to try again in the [init] method
    }
  }

  Future<void> takePhoto() async {
    await state.whenOrNull(
      loaded: (controller, _, __, ___) async {
        try {
          final file = await controller.takePicture();
          emit(
            CameraState.captured(
              photo: File(
                file.path,
              ),
            ),
          );
        } catch (_) {
          emit(const CameraState.error());
        }
      },
    );
  }

  Future<void> flipCam() async {
    await state.whenOrNull(
      loaded: (controller, flashMode, currentCam, hasMultiCam) async {
        emit(const CameraState.changing());
        final newController = await _createAndInitController(
          _cameraArrange.getOpposite(currentCam)!,
        );
        if (newController == null) {
          emit(const CameraState.error());
          return;
        }
        emit(
          CameraState.loaded(
            controller: newController,
            flashMode: FlashMode.off,
            currentCam: _cameraArrange.getOpposite(currentCam)!,
            hasMultiCam: _cameraArrange.hasMulticam,
          ),
        );
      },
    );
  }

  Future<void> setFlashMode() async {
    await state.whenOrNull(
      loaded: (controller, flashMode, currentCam, hasMultiCam) async {
        controller.setFlashMode(
          flashMode == FlashMode.always ? FlashMode.off : FlashMode.always,
        );
        emit(
          CameraState.loaded(
            controller: controller,
            flashMode: flashMode == FlashMode.always
                ? FlashMode.off
                : FlashMode.always,
            currentCam: currentCam,
            hasMultiCam: hasMultiCam,
          ),
        );
      },
    );
  }

  ImageFormatGroup _getImageFormatByPlatform() {
    return Platform.isIOS ? ImageFormatGroup.bgra8888 : ImageFormatGroup.yuv420;
  }

  Future<CameraController?> _createAndInitController(
    CameraDescription cameraDescription,
  ) async {
    try {
      final controller = CameraController(
        cameraDescription,
        ResolutionPreset.max,
        imageFormatGroup: _getImageFormatByPlatform(),
        enableAudio: false,
      );
      await controller.initialize();
      return controller;
    } catch (_) {}
    return null;
  }

  @override
  Future<void> close() async {
    state.whenOrNull(
      loaded: (controller, _, __, ___) {
        controller.dispose();
      },
    );
    super.close();
  }
}
