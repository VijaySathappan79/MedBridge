import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'presentation/screens/dashboard_screen.dart';

void main() {
  runApp(const MedBridgeApp());
}

class MedBridgeApp extends StatelessWidget {
  const MedBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedBridge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
    );
  }
}
