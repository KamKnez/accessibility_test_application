import 'package:flutter/material.dart';
import 'my_home_page.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Default: Light Mode

  void toggleTheme() {
    setState(() {
      _themeMode =
          (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark, // Dark Mode
        ),
      ),
      themeMode: _themeMode, // Dynamic Theme Switching
      home: MyHomePage(toggleTheme: toggleTheme),
    );
  }
}
