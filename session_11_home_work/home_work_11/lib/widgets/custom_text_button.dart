import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    required this.titleColor,
    required this.backgroundColor,
  });
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(
          double.infinity,
          45,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
      ),

      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
