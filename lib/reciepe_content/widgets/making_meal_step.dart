
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
        SizedBox(
          width: MediaQuery.sizeOf(context).height / 53.2,
        ),
        CircleAvatar(
          backgroundColor: Colors.orange.shade600,
          radius: MediaQuery.sizeOf(context).height / 91.15,
        )
      ],
    );
  }
}