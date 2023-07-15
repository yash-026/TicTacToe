import 'package:flutter/material.dart';
import 'package:tic_tac_toe/splashscreen.dart';
import 'package:tic_tac_toe/theme/lighttheme.dart';
import 'package:tic_tac_toe/theme/darktheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splashscreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}


