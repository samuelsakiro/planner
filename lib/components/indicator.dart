import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 220,
      lineHeight: 10,
      percent: 0.5,
      progressColor: Colors.red,
      backgroundColor: Colors.red.shade100,
    );
  }
}
