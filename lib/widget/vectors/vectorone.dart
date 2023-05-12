import 'package:flutter/material.dart';
import 'package:mopital_app/constants.dart';

class VectorOnePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9868421);
    path_0.cubicTo(
        size.width * 0.9355346,
        size.height * 0.8605263,
        size.width * 1.250921,
        size.height * 0.5677684,
        size.width * 0.7845912,
        size.height * -0.002631579);
    path_0.lineTo(size.width * 0.6525157, size.height * -0.002631579);
    path_0.cubicTo(
        size.width * 0.8808396,
        size.height * 0.5897368,
        size.width * 0.5775377,
        size.height * 0.6636789,
        0,
        size.height * 0.7736842);
    path_0.cubicTo(
        size.width * 0.001060437,
        size.height * 0.7306632,
        size.width * 0.001745884,
        size.height * 0.6896789,
        size.width * 0.002401531,
        size.height * 0.6504737);
    path_0.cubicTo(
        size.width * 0.007015063,
        size.height * 0.3746274,
        size.width * 0.01015450,
        size.height * 0.1869205,
        size.width * 0.1320755,
        size.height * -0.002631579);
    path_0.lineTo(0, size.height * -0.002631579);
    path_0.cubicTo(0, size.height * -0.002631579, size.width * -0.9355346,
        size.height * 1.113158, 0, size.height * 0.9868421);
    path_0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = lightGreen;
    canvas.drawPath(path_0, paint0fill);

    Path path_1 = Path();
    path_1.moveTo(0, size.height * 0.7736842);
    path_1.cubicTo(
        size.width * 0.5775377,
        size.height * 0.6636789,
        size.width * 0.8808396,
        size.height * 0.5897368,
        size.width * 0.6525157,
        size.height * -0.002631579);
    path_1.lineTo(size.width * 0.1320755, size.height * -0.002631579);
    path_1.cubicTo(
        size.width * 0.01015450,
        size.height * 0.1869205,
        size.width * 0.007015063,
        size.height * 0.3746274,
        size.width * 0.002401531,
        size.height * 0.6504737);
    path_1.cubicTo(
        size.width * 0.001745884,
        size.height * 0.6896789,
        size.width * 0.001060437,
        size.height * 0.7306632,
        0,
        size.height * 0.7736842);
    path_1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = lightOrange;
    canvas.drawPath(path_1, paint1fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
