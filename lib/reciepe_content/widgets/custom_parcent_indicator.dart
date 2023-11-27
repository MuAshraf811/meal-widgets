import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomParcentIndicator extends StatelessWidget {
  const CustomParcentIndicator({
    super.key,
    required this.radius,
    required this.progressColor,
    required this.parcentIndicatorTitle,
    required this.parcentIndicatorAmount,
    required this.parcent,
     this.leftPadding=0,
  });
  final double radius;
  final Color progressColor;
  final String parcentIndicatorTitle;
  final int parcentIndicatorAmount;
  final double parcent;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: radius,
            animation: true,
            animationDuration: 1200,
            lineWidth: 10.0,
            percent: parcent,
            center: Text(
              parcentIndicatorAmount.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.grey.shade900,
            progressColor: progressColor,
          ),
          Padding(
            padding:  EdgeInsets.only(left: leftPadding),
            child: Text(
              parcentIndicatorTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
