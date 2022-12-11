import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

class _IndicatorPainter extends CustomPainter {
  _IndicatorPainter({
    required this.percentage,
    required this.innerCircleRadius,
  });

  final double percentage;
  final double innerCircleRadius;

  @override
  void paint(Canvas canvas, Size size) {
    var colorTween = ColorTween(
      begin: kColorIndicatorBegin,
      end: kColorIndicatorEnd,
    );
    const spaceLen = 16;
    const lineLen = 24;
    final offset0 = Offset(size.width * 0.5, size.height * 0.5);
    for (int i = 1; i < 360 * percentage; i += 5) {
      final per = i / 360.0;
      final color = colorTween.lerp(per)!;
      final paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;
      final angle = (2 * pi * per) - (pi / 2);
      final offset1 = offset0.translate(
        (innerCircleRadius + spaceLen) * cos(angle),
        (innerCircleRadius + spaceLen) * sin(angle),
      );
      final offset2 = offset1.translate(
        lineLen * cos(angle),
        lineLen * sin(angle),
      );
      canvas.drawLine(offset1, offset2, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    const innerCircleRadius = 82.0;
    const percentage = 0.6212;
    var percentageString = (percentage * 100).toStringAsFixed(1);
    return CustomPaint(
      painter: _IndicatorPainter(
        percentage: percentage,
        innerCircleRadius: innerCircleRadius,
      ),
      child: Container(
        padding: const EdgeInsets.all(64),
        child: Material(
          color: Colors.white,
          elevation: kElevation,
          borderRadius: BorderRadius.circular(innerCircleRadius),
          child: SizedBox(
            width: innerCircleRadius * 2,
            height: innerCircleRadius * 2,
            child: Center(
              child: Text(
                percentageString,
                style: const TextStyle(
                  color: kColorPink,
                  fontSize: 48,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}