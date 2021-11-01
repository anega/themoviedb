import 'dart:math';

import 'package:flutter/material.dart';

/* usage

        CirclePercentIndicator(
          indicatorRadius: 50,
          percent: 0.01,
          circleBgColor: Color(0xFF081C22),
          percentDoneColor: Color(0xFFD2D531),
          percentLeftColor: Color(0xFF423D0F),
        ),
 */

class CirclePercentIndicator extends StatelessWidget {
  final double indicatorRadius;
  final double percent;
  final Color circleBgColor;
  final Color percentDoneColor;
  final Color percentLeftColor;

  const CirclePercentIndicator(
      {required this.indicatorRadius,
      required this.percent,
      required this.circleBgColor,
      required this.percentDoneColor,
      required this.percentLeftColor});

  @override
  Widget build(BuildContext context) {
    final int percentValueToShow = (percent * 100).toInt();

    return Container(
      width: indicatorRadius * 2,
      height: indicatorRadius * 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: CirclePercentIndicatorPainter(
              indicatorRadius: indicatorRadius,
              percent: percent,
              circleBgColor: circleBgColor,
              percentDoneColor: percentDoneColor,
              percentLeftColor: percentLeftColor,
            ),
          ),
          Center(
            child: Text(
              '$percentValueToShow%',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CirclePercentIndicatorPainter extends CustomPainter {
  final double indicatorRadius;
  final double percent;
  final Color circleBgColor;
  final Color percentDoneColor;
  final Color percentLeftColor;

  CirclePercentIndicatorPainter(
      {required this.indicatorRadius,
      required this.percent,
      required this.circleBgColor,
      required this.percentDoneColor,
      required this.percentLeftColor});

  @override
  void paint(Canvas canvas, Size size) {
    var bgCirclePaint = Paint();
    bgCirclePaint.color = circleBgColor;
    canvas.drawOval(Offset.zero & size, bgCirclePaint);

    var percentLeft = Paint();
    percentLeft.color = percentLeftColor;
    percentLeft.style = PaintingStyle.stroke;
    percentLeft.strokeWidth = 4;
    canvas.drawArc(
      Offset(4, 4) & Size(size.width - 8, size.height - 8),
      pi * 2 * percent - (pi / 2),
      pi * 2 * (1.0 - percent),
      false,
      percentLeft,
    );

    final percentDone = Paint();
    percentDone.color = percentDoneColor;
    percentDone.style = PaintingStyle.stroke;
    percentDone.strokeWidth = 4;
    percentDone.strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(4, 4) & Size(size.width - 8, size.height - 8),
      -pi / 2,
      pi * 2 * percent,
      false,
      percentDone,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
