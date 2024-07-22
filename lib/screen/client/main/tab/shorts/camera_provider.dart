import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
final cameraProvider = FutureProvider<List<CameraDescription>>((ref) async {
  return await availableCameras();
});