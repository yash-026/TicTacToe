import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const HomeScreen()
          )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
                totalRepeatCount: 5,
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    'TIC\nTAC\nTOE',
                    textStyle: GoogleFonts.pressStart2p(fontWeight: FontWeight.bold, fontSize: 50.0),
                    colors: colorizeColors,
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}