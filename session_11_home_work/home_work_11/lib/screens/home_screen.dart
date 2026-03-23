import 'package:flutter/material.dart';
import 'package:home_work_11/widgets/custom_welcome_card.dart';
import 'package:home_work_11/widgets/features_listTile_section.dart';
import 'package:home_work_11/widgets/navigation_buttons_section.dart';
import 'package:home_work_11/widgets/quick_stats_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.0,
              children: [
                CustomWelcomeCard(),
                Text(
                  'Quick Stats',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                QuickStatsSection(),

                Text(
                  'Features',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FeaturesListTileSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationButtonsSection(),
    );
  }
}
