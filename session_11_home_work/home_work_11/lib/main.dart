import 'package:flutter/material.dart';
import 'package:home_work_11/screens/home_screen.dart';

void main() {
  runApp(const DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomeScreen(),
    );
  }
}

