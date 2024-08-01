import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/camera_cubit.dart';
import 'controller.dart';

class ShowMeTheCamera extends StatefulWidget {
  final Function(File file) onCapture;
  final Function? onError;
  final Widget? content;
  final Widget? loadingWidget;
  final ShowMeTheCameraController? controller;

  const ShowMeTheCamera({
    required this.onCapture,
    this.onError,
    this.content,
    this.loadingWidget,
    this.controller,
    super.key,
  });

  @override
  State<ShowMeTheCamera> createState() => _ShowMeTheCameraState();
}

class _ShowMeTheCameraState extends State<ShowMeTheCamera> {
  late final CameraCubit _cameraCubit;

  @override
  void initState() {
    super.initState();
    _cameraCubit = CameraCubit()..init();
    widget.controller?.addListener(() {
      if (widget.controller?.currentAction == CameraAction.takePhoto) {
        _cameraCubit.takePhoto();
      }
      if (widget.controller?.currentAction == CameraAction.flipCamera) {
        _cameraCubit.flipCam();
      }
      if (widget.controller?.currentAction == CameraAction.swichFlash) {
        _cameraCubit.setFlashMode();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: BlocConsumer<CameraCubit, CameraState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (cameraConfig) {
                final file = cameraConfig.photoCaptured;
                if (file == null) return;
                widget.onCapture.call(file);
              },
              error: () => widget.onError?.call(),
            );
          },
          bloc: _cameraCubit,
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (cameraConfig) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width:
                              cameraConfig.controller.value.previewSize?.height,
                          height:
                              cameraConfig.controller.value.previewSize?.width,
                          child: cameraConfig.controller.buildPreview(),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: widget.content ?? const SizedBox.shrink(),
                    )
                  ],
                );
              },
              loading: () => widget.loadingWidget ?? const SizedBox.shrink(),
              orElse: SizedBox.shrink,
            );
          },
        ),
      ),
    );
  }
}
