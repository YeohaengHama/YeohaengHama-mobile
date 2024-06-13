import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MarkerPainter extends CustomPainter {
  final int index;
  final Color color;

  MarkerPainter(this.index, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Draw circle
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw text
    final textPainter = TextPainter(
      text: TextSpan(
        text: '$index',
        style: TextStyle(
          color: Colors.white,
          fontSize: size.width / 2,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width / 2 - textPainter.width / 2, size.height / 2 - textPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
