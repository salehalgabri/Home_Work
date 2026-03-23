import 'package:flutter/material.dart';
import 'package:home_work_11/widgets/custom_text_button.dart';

class NavigationButtonsSection extends StatelessWidget {
  const NavigationButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 12.0,
        children: [
          Expanded(
            child: CustomTextButton(
              title: 'Settings',
              titleColor: Colors.white,
              backgroundColor: Color(0xFF2196F3),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              title: 'Profile',
              titleColor: Colors.white,
              backgroundColor: Color(0xFFFF9700),
            ),
          ),
        ],
      ),
    );
  }
}
