// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class UpperContainerWithMealImage extends StatelessWidget {
  const UpperContainerWithMealImage({
    super.key,
    required this.mealNetworkImageUrl,
  });
  final String mealNetworkImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 820,
      child: Image.network(
        mealNetworkImageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
