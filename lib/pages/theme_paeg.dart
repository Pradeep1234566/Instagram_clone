

import 'package:flutter/material.dart';

class ThemePage extends StatefulWidget {
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Switcher'),
          actions: [
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                toggleTheme();
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Switch between Light and Dark Mode'),
        ),
      ),
    );
  }
}