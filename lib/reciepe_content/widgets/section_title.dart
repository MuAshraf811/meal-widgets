
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.fontsize,
  });
  final String title;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: fontsize),
    );
  }
}