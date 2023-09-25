import 'package:flutter/material.dart';
import 'package:jin_app/screens/login.dart';
import 'package:jin_app/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Jin',
      theme: LightTheme().themeData,
      home: Container(
        color: Colors.white,
        child: const SafeArea(
          child: Login(),
        ),
      ),
    );
  }
}
