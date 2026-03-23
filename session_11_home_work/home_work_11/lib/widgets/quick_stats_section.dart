import 'package:flutter/material.dart';
import 'package:home_work_11/constant.dart';
import 'package:home_work_11/widgets/custom_card.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomCard(
            content: '1,234',
            title: 'User',
            icon: Icons.group,
            iconColor: sColor,
          ),
        ),
        Expanded(
          child: CustomCard(
            content: '4.8',
            title: 'Rating',
            icon: Icons.star,
            iconColor: Color(0xFFFB8F00),
          ),
        ),
        Expanded(
          child: CustomCard(
            content: '98%',
            title: 'Success',
            icon: Icons.trending_up,
            iconColor: Color(0xFF329AD9),
          ),
        ),
      ],
    );
  }
}
