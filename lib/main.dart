import 'package:flutter/material.dart';
import 'package:inventory/constants/app_theme.dart';
import 'package:inventory/providers/theme_provider.dart';
import 'package:inventory/screens/dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Inventory',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
