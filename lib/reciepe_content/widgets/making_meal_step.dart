
import 'package:flutter/material.dart';

class MakingMealStep extends StatelessWidget {
  const MakingMealStep({
    super.key,
    required this.stepName,
  });
  final String stepName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          stepName,
          style: const TextStyle(color: Colors.white, fontSize: 19),
        ),
       const SizedBox(
          width: 12,
        ),
        CircleAvatar(
          backgroundColor: Colors.orange.shade600,
          radius: 7,
        )
      ],
    );
  }
}