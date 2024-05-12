import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/camera_cubit.dart';

class ShowMeTheCamera extends StatefulWidget {
  final Function(File file) onCapture;
  final Function? onError;
  final Widget? content;
  final Widget? loadingWidget;

  const ShowMeTheCamera({
    required this.onCapture,
    this.onError,
    this.content,
    this.loadingWidget,
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
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: BlocConsumer<CameraCubit, CameraState>(
            listener: (context, state) {
              state.maybeWhen(
                captured: (photo) {
                  widget.onCapture.call(photo);
                },
                error: () {
                  widget.onError?.call();
                },
                orElse: () {},
              );
            },
            bloc: _cameraCubit,
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (controller, flashMode, __, hasMultiCam) {
                  return Stack(
                    children: [
                      controller.buildPreview(),
                      Column(
                        children: [
                          Expanded(
                            child: widget.content ?? const SizedBox.shrink(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.6),
                                  child: IconButton(
                                    onPressed: _cameraCubit.setFlashMode,
                                    icon: Icon(
                                      flashMode == FlashMode.off
                                          ? Icons.flash_off
                                          : Icons.flash_on,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  child: InkWell(
                                    onTap: _cameraCubit.takePhoto,
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                if (hasMultiCam)
                                  InkWell(
                                    onTap: _cameraCubit.flipCam,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.6),
                                      child: Icon(
                                        Platform.isAndroid
                                            ? Icons.flip_camera_android
                                            : Icons.flip_camera_ios,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                else
                                  const SizedBox(width: 40)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
                orElse: () => widget.loadingWidget ?? const SizedBox.shrink(),
                captured: (_) => const SizedBox.shrink(),
                error: SizedBox.shrink,
                changing: SizedBox.shrink,
              );
            },
          ),
        ),
      ),
    );
  }
}
