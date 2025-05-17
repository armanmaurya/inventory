import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inventory/widgets/animated_bottom_nav.dart';
import 'package:inventory/screens/inventory_screen.dart';
import 'package:inventory/screens/analytics_screen.dart';
import 'package:inventory/screens/settings_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    const List<Widget> screens = [
      InventoryScreen(),
      AnalyticsScreen(),
      SettingsScreen(),
    ];

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: screens,
      ),
      bottomNavigationBar: AnimatedBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
