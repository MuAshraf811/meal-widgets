
import 'package:flutter/material.dart';

class CustomDividerBetweenIngradients extends StatelessWidget {
  const CustomDividerBetweenIngradients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade900,
      thickness: 2,
      indent: 24,
      endIndent: 24,
    );
  }
}
