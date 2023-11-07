
import 'package:flutter/material.dart';

class CustomMealIngradiantsContainer extends StatelessWidget {
  const CustomMealIngradiantsContainer({
    super.key,
    required this.ingradiantName,
    required this.ingradiantAmount,
  });
  final String ingradiantName;
  final String ingradiantAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ingradiantAmount,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            ingradiantName,
            style:const  TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
