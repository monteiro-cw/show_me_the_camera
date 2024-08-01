import 'package:flutter/material.dart';

class ShowMeTheCameraController extends ChangeNotifier {
  CameraAction? currentAction;
  void callAction(CameraAction action) {
    currentAction = action;
    notifyListeners();
  }
}

enum CameraAction {
  takePhoto,
  flipCamera,
  swichFlash,
}
