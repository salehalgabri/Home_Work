import 'package:flutter/material.dart';
import 'package:home_work_11/constant.dart';
import 'package:home_work_11/widgets/custom_text_button.dart';

class CustomWelcomeCard extends StatelessWidget {
  const CustomWelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: pColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16,
          ),
        ),
      ),
      width: double.infinity,
      child: Column(
        spacing: 8.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello!  👋',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Try your best to build this ui',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          CustomTextButton(
            title: 'Get Started',
            backgroundColor: sColor,
            titleColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
