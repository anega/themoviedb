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
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
