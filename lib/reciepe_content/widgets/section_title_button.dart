
import 'package:custom_widgets/reciepe_content/widgets/section_title.dart';
import 'package:flutter/material.dart';

import 'custom_outlined_button.dart';

class SectionTitleAndItsActionButton extends StatelessWidget {
  const SectionTitleAndItsActionButton({
    super.key,
    required this.sectionTitle,
    required this.buttonName,
    required this.onTap,
  });
  final String sectionTitle;
  final String buttonName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutLinesdButton(
            onTap: onTap,
            text: buttonName,
            buttonHorizontalpadding: 18,
            buttonLeftMargin: 8,
          ),
          SectionTitle(title: sectionTitle, fontsize: 22),
        ],
      ),
    );
  }
}