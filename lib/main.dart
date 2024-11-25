import 'package:blabber/common/theme/dark_theme.dart';
import 'package:blabber/common/theme/light_theme.dart';
import 'package:blabber/feature/welcome/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blabber',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
