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
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
