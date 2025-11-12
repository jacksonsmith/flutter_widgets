import 'package:flutter/material.dart';
import 'core/constants/app_strings.dart';
import 'core/di/injection.dart';
import 'core/themes/app_theme.dart';

void main() {
  // Initialize Dependency Injection
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: Text('Flutter Widgets App - Setup Complete!'),
        ),
      ),
    );
  }
}

