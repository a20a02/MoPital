import 'package:flutter/material.dart';

import '../../constants.dart';

class VectorTwoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1183333, size.height);
    path_0.cubicTo(
        size.width * -0.1344163,
        size.height * 0.4449722,
        size.width * 0.008333333,
        size.height * 0.3000000,
        size.width * 0.6916667,
        size.height * 0.07341823);
    path_0.cubicTo(
        size.width * 1.375000,
        size.height * -0.1531641,
        size.width * 0.9966667,
        size.height * 0.2265828,
        size.width * 0.9966667,
        size.height * 0.2265828);
    path_0.lineTo(size.width * 0.9966667, size.height);
    path_0.lineTo(size.width * 0.1183333, size.height);
    path_0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = lightOrange;
    canvas.drawPath(path_0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
