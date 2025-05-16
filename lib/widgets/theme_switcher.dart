import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class ThemeSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final currentMode = themeProvider.themeMode;

    return ExpansionTile(
      title: Text('Theme'),
      leading: Icon(Icons.color_lens),
      children: [
        RadioListTile<ThemeMode>(
          title: Text('Light'),
          value: ThemeMode.light,
          groupValue: currentMode,
          onChanged: (mode) {
            if (mode != null) themeProvider.setThemeMode(mode);
          },
        ),
        RadioListTile<ThemeMode>(
          title: Text('Dark'),
          value: ThemeMode.dark,
          groupValue: currentMode,
          onChanged: (mode) {
            if (mode != null) themeProvider.setThemeMode(mode);
          },
        ),
        RadioListTile<ThemeMode>(
          title: Text('System'),
          value: ThemeMode.system,
          groupValue: currentMode,
          onChanged: (mode) {
            if (mode != null) themeProvider.setThemeMode(mode);
          },
        ),
      ],
    );
  }
}
