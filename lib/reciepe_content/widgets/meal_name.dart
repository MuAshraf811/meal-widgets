import 'package:flutter/material.dart';

class MealName extends StatelessWidget {
  const MealName({
    super.key,
    required this.mealName,
    required this.alignment,
    this.fontSize=22,
  });
  final String mealName;
  final AlignmentGeometry alignment;
  final double fontSize ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).height / 20,
          top: MediaQuery.sizeOf(context).height / 22),
      child: Align(
        alignment: alignment,
        child: Text(
          mealName,
          style:  TextStyle(
              color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
