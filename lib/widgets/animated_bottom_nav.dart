import 'package:flutter/material.dart';
import 'package:inventory/widgets/nav_item.dart';

class AnimatedBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AnimatedBottomNav({required this.currentIndex, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            icon: Icons.inventory,
            label: 'Inventory',
            isActive: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          NavItem(
            icon: Icons.analytics,
            label: 'Analytics',
            isActive: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          NavItem(
            icon: Icons.settings,
            label: 'Settings',
            isActive: currentIndex == 2,
            onTap: () => onTap(2),
          ),
        ],
      ),
    );
  }
}
