import 'dart:math';

import 'package:flutter/material.dart';

class CirclePercentIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: CustomPaint(
        painter: CustomCircleIndicator(),
      ),
    );
  }
}

class CustomCircleIndicator extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var bgCirclePaint = Paint();
    bgCirclePaint.color = Color(0xFF081C22);
    canvas.drawCircle(Offset(50, 50), 50.0, bgCirclePaint);

    var percentLeft = Paint();
    percentLeft.color = Color(0xFF423D0F);
    percentLeft.style = PaintingStyle.stroke;
    percentLeft.strokeWidth = 4;
    percentLeft.strokeCap = StrokeCap.round;
    canvas.drawArc(
        Offset.zero & Size(100.0, 100.0), 0 - pi, 2 * pi, false, percentLeft);

    var percentDone = Paint();
    percentDone.color = Color(0xFFD2D531);
    percentDone.style = PaintingStyle.stroke;
    percentDone.strokeWidth = 4;
    percentDone.strokeCap = StrokeCap.round;
    canvas.drawArc(Offset.zero & Size(100.0, 100.0), 0, pi, false, percentDone);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
