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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height / 79.75,
          horizontal: MediaQuery.sizeOf(context).height / 34.4),
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
