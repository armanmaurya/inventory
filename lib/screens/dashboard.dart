import 'package:flutter/material.dart';
import 'package:inventory/widgets/theme_switcher.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Welcome to the Dashboard',
              style: TextStyle(fontSize: 24),
            ),
            ThemeSwitcher(),
          ],
        ),
      ),
    );
  }
}