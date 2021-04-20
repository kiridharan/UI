import 'package:flutter/material.dart';

class BluebackgroundCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xffEBF2FE)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2000000, size.height * 0.0016667);
    path_0.lineTo(size.width * 0.2005000, size.height);
    path_0.lineTo(size.width * 0.0010000, size.height);
    path_0.lineTo(size.width * 0.0010000, 0);
    path_0.lineTo(size.width * 0.1480000, size.height * 0.0016667);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
