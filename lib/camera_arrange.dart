import 'package:camera/camera.dart';

class CameraArrange {
  final CameraDescription? front;
  final CameraDescription? back;

  CameraArrange({this.front, this.back});

  factory CameraArrange.fromList(List<CameraDescription> cameras) {
    final uniqueCameras = <String, CameraDescription>{};

    for (final camera in cameras) {
      uniqueCameras.putIfAbsent(camera.lensDirection.name, () => camera);
    }

    return CameraArrange(
      front: uniqueCameras[CameraLensDirection.front.name],
      back: uniqueCameras[CameraLensDirection.back.name],
    );
  }

  bool get hasBackCamera => back != null;
  bool get hasFrontCamera => front != null;
  bool get hasMulticam => hasFrontCamera && hasBackCamera;

  CameraDescription? getOpposite(CameraDescription cameraDescription) {
    if (cameraDescription.lensDirection.name == CameraLensDirection.back.name) {
      return front;
    }
    return back;
  }

  CameraDescription getFirst() {
    final backCam = back;
    if (backCam != null) {
      return backCam;
    }
    return front!;
  }
}
