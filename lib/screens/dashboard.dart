import 'package:flutter/material.dart';
import 'package:inventory/widgets/theme_switcher.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user != null) ...[
              Text(
                'Hello, ${user.displayName ?? 'User'}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
            ],
            const Text(
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