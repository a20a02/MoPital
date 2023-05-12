import 'package:flutter/material.dart';

import '../../constants.dart';

class VectorThreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.004870130, size.height * 0.03757254);
    path_0.lineTo(size.width * -0.004870130, size.height * 0.9985549);
    path_0.lineTo(size.width * 0.6314935, size.height * 0.9985549);
    path_0.cubicTo(
        size.width * 0.4485422,
        size.height * 0.9374942,
        size.width * 0.2840909,
        size.height * 0.2774569,
        size.width * 0.8051948,
        size.height * 0.2774566);
    path_0.cubicTo(
        size.width * 1.326299,
        size.height * 0.2774566,
        size.width * 0.7042110,
        size.height * -0.1169318,
        size.width * -0.004870130,
        size.height * 0.03757254);
    path_0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = const Color(0xffD9D9D9).withOpacity(1.0);
    canvas.drawPath(path_0, paint0fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.004870130, size.height * 0.03757254);
    path_1.lineTo(size.width * -0.004870130, size.height * 0.9985549);
    path_1.lineTo(size.width * 0.6314935, size.height * 0.9985549);
    path_1.cubicTo(
        size.width * 0.4485422,
        size.height * 0.9374942,
        size.width * 0.2840909,
        size.height * 0.2774569,
        size.width * 0.8051948,
        size.height * 0.2774566);
    path_1.cubicTo(
        size.width * 1.326299,
        size.height * 0.2774566,
        size.width * 0.7042110,
        size.height * -0.1169318,
        size.width * -0.004870130,
        size.height * 0.03757254);
    path_1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = darkGreen;
    canvas.drawPath(path_1, paint1fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
