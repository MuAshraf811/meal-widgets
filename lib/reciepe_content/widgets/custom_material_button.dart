import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.buttonColor,
  });
  final VoidCallback onTap;
  final String text;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: buttonColor,
      minWidth: 48,
      padding:const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}