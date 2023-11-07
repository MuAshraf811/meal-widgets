
import 'package:flutter/material.dart';

class CustomOutLinesdButton extends StatelessWidget {
  const CustomOutLinesdButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.buttonHorizontalpadding,
    required this.buttonLeftMargin,
  });
  final VoidCallback onTap;
  final String text;
  final double buttonHorizontalpadding;
  final double buttonLeftMargin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(left: buttonLeftMargin),
          padding: EdgeInsets.symmetric(
              horizontal: buttonHorizontalpadding, vertical: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.green,
                width: 1.5,
              )),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}