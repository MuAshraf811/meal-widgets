
import 'package:flutter/material.dart';

class MealName extends StatelessWidget {
  const MealName({
    super.key,
    required this.mealName,
  });
  final String mealName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 12),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          mealName,
          style:const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
