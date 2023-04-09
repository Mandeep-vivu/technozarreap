import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();


    // Path number 1


    paint.color = Color(0xff01);
    path = Path();
    path.lineTo(0, size.height * 0.88);
    path.cubicTo(0, size.height * 0.88, size.width * 0.14, size.height * 0.82, size.width * 0.14, size.height * 0.82);
    path.cubicTo(size.width * 0.14, size.height * 0.82, size.width * 0.14, size.height * 0.59, size.width * 0.14, size.height * 0.59);
    path.cubicTo(size.width * 0.14, size.height * 0.59, size.width * 0.29, size.height * 0.82, size.width * 0.29, size.height * 0.82);
    path.cubicTo(size.width * 0.29, size.height * 0.82, size.width * 0.29, size.height * 0.88, size.width * 0.29, size.height * 0.88);
    path.cubicTo(size.width * 0.29, size.height * 0.88, size.width * 0.43, size.height * 0.94, size.width * 0.43, size.height * 0.94);
    path.cubicTo(size.width * 0.43, size.height * 0.94, size.width * 0.43, size.height * 1.03, size.width * 0.43, size.height * 1.03);
    path.cubicTo(size.width * 0.43, size.height * 1.03, size.width * 0.57, size.height * 0.82, size.width * 0.57, size.height * 0.82);
    path.cubicTo(size.width * 0.57, size.height * 0.82, size.width * 0.57, size.height * 0.88, size.width * 0.57, size.height * 0.88);
    path.cubicTo(size.width * 0.57, size.height * 0.88, size.width * 0.71, size.height * 0.73, size.width * 0.71, size.height * 0.73);
    path.cubicTo(size.width * 0.71, size.height * 0.73, size.width * 0.71, size.height * 0.81, size.width * 0.71, size.height * 0.81);
    path.cubicTo(size.width * 0.71, size.height * 0.81, size.width * 0.86, size.height * 0.81, size.width * 0.86, size.height * 0.81);
    path.cubicTo(size.width * 0.86, size.height * 0.81, size.width * 0.86, size.height * 0.88, size.width * 0.86, size.height * 0.88);
    path.cubicTo(size.width * 0.86, size.height * 0.88, size.width, size.height * 0.82, size.width, size.height * 0.82);
    path.cubicTo(size.width, size.height * 0.82, size.width, size.height * 0.94, size.width, size.height * 0.94);
    path.cubicTo(size.width, size.height * 0.94, size.width, size.height * 1.59, size.width, size.height * 1.59);
    path.cubicTo(size.width, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, 0, size.height * 1.59, 0, size.height * 1.59);
    path.cubicTo(0, size.height * 1.59, 0, size.height * 0.88, 0, size.height * 0.88);
    canvas.drawPath(path, paint);


    // Path number 2


    paint.color = Color(0xff02);
    path = Path();
    path.lineTo(0, size.height * 1.09);
    path.cubicTo(0, size.height * 1.09, size.width * 0.14, size.height * 1.06, size.width * 0.14, size.height * 1.06);
    path.cubicTo(size.width * 0.14, size.height * 1.06, size.width * 0.14, size.height * 1.14, size.width * 0.14, size.height * 1.14);
    path.cubicTo(size.width * 0.14, size.height * 1.14, size.width * 0.29, size.height, size.width * 0.29, size.height);
    path.cubicTo(size.width * 0.29, size.height, size.width * 0.29, size.height * 1.17, size.width * 0.29, size.height * 1.17);
    path.cubicTo(size.width * 0.29, size.height * 1.17, size.width * 0.43, size.height * 1.11, size.width * 0.43, size.height * 1.11);
    path.cubicTo(size.width * 0.43, size.height * 1.11, size.width * 0.43, size.height * 0.97, size.width * 0.43, size.height * 0.97);
    path.cubicTo(size.width * 0.43, size.height * 0.97, size.width * 0.57, size.height * 1.03, size.width * 0.57, size.height * 1.03);
    path.cubicTo(size.width * 0.57, size.height * 1.03, size.width * 0.57, size.height * 1.09, size.width * 0.57, size.height * 1.09);
    path.cubicTo(size.width * 0.57, size.height * 1.09, size.width * 0.71, size.height * 1.14, size.width * 0.71, size.height * 1.14);
    path.cubicTo(size.width * 0.71, size.height * 1.14, size.width * 0.71, size.height * 1.1, size.width * 0.71, size.height * 1.1);
    path.cubicTo(size.width * 0.71, size.height * 1.1, size.width * 0.86, size.height, size.width * 0.86, size.height);
    path.cubicTo(size.width * 0.86, size.height, size.width * 0.86, size.height * 1.11, size.width * 0.86, size.height * 1.11);
    path.cubicTo(size.width * 0.86, size.height * 1.11, size.width, size.height * 0.97, size.width, size.height * 0.97);
    path.cubicTo(size.width, size.height * 0.97, size.width, size.height * 1.09, size.width, size.height * 1.09);
    path.cubicTo(size.width, size.height * 1.09, size.width, size.height * 1.59, size.width, size.height * 1.59);
    path.cubicTo(size.width, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, 0, size.height * 1.59, 0, size.height * 1.59);
    path.cubicTo(0, size.height * 1.59, 0, size.height * 1.09, 0, size.height * 1.09);
    canvas.drawPath(path, paint);


    // Path number 3


    paint.color = Color(0xff262699);
    path = Path();
    path.lineTo(0, size.height * 1.38);
    path.cubicTo(0, size.height * 1.38, size.width * 0.14, size.height * 1.32, size.width * 0.14, size.height * 1.32);
    path.cubicTo(size.width * 0.14, size.height * 1.32, size.width * 0.14, size.height * 1.23, size.width * 0.14, size.height * 1.23);
    path.cubicTo(size.width * 0.14, size.height * 1.23, size.width * 0.29, size.height * 1.23, size.width * 0.29, size.height * 1.23);
    path.cubicTo(size.width * 0.29, size.height * 1.23, size.width * 0.29, size.height * 1.2, size.width * 0.29, size.height * 1.2);
    path.cubicTo(size.width * 0.29, size.height * 1.2, size.width * 0.43, size.height * 1.29, size.width * 0.43, size.height * 1.29);
    path.cubicTo(size.width * 0.43, size.height * 1.29, size.width * 0.43, size.height * 1.23, size.width * 0.43, size.height * 1.23);
    path.cubicTo(size.width * 0.43, size.height * 1.23, size.width * 0.57, size.height * 1.35, size.width * 0.57, size.height * 1.35);
    path.cubicTo(size.width * 0.57, size.height * 1.35, size.width * 0.57, size.height * 1.26, size.width * 0.57, size.height * 1.26);
    path.cubicTo(size.width * 0.57, size.height * 1.26, size.width * 0.71, size.height * 1.17, size.width * 0.71, size.height * 1.17);
    path.cubicTo(size.width * 0.71, size.height * 1.17, size.width * 0.71, size.height * 1.26, size.width * 0.71, size.height * 1.26);
    path.cubicTo(size.width * 0.71, size.height * 1.26, size.width * 0.86, size.height * 1.2, size.width * 0.86, size.height * 1.2);
    path.cubicTo(size.width * 0.86, size.height * 1.2, size.width * 0.86, size.height * 1.11, size.width * 0.86, size.height * 1.11);
    path.cubicTo(size.width * 0.86, size.height * 1.11, size.width, size.height * 1.2, size.width, size.height * 1.2);
    path.cubicTo(size.width, size.height * 1.2, size.width, size.height * 1.26, size.width, size.height * 1.26);
    path.cubicTo(size.width, size.height * 1.26, size.width, size.height * 1.59, size.width, size.height * 1.59);
    path.cubicTo(size.width, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59, size.width * 0.86, size.height * 1.59);
    path.cubicTo(size.width * 0.86, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59, size.width * 0.71, size.height * 1.59);
    path.cubicTo(size.width * 0.71, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59, size.width * 0.57, size.height * 1.59);
    path.cubicTo(size.width * 0.57, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59, size.width * 0.43, size.height * 1.59);
    path.cubicTo(size.width * 0.43, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59, size.width * 0.29, size.height * 1.59);
    path.cubicTo(size.width * 0.29, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59, size.width * 0.14, size.height * 1.59);
    path.cubicTo(size.width * 0.14, size.height * 1.59, 0, size.height * 1.59, 0, size.height * 1.59);
    path.cubicTo(0, size.height * 1.59, 0, size.height * 1.38, 0, size.height * 1.38);
    canvas.drawPath(path, paint);
  }
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
