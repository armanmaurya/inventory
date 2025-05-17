import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          snap: true,
          title: Text('Settings'),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'App Settings',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  value: true,
                  onChanged: (val) {},
                  title: const Text('Enable Notifications'),
                  secondary: const Icon(Icons.notifications),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text('Change Password'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
