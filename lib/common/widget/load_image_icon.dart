import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:fast_app_base/common/widget/scaffold/w_marker.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

class ImageLoader {
  static Future<Uint8List> createCustomMarkerBitmap(int index, Color color) async {
    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Size size = Size(70, 70); // Define the size of the marker

    final MarkerPainter painter = MarkerPainter(index, color);
    painter.paint(canvas, size);

    final ui.Image image = await pictureRecorder.endRecording().toImage(size.width.toInt(), size.height.toInt());
    final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
