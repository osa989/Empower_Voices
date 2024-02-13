import 'dart:async';
import 'package:flutter/material.dart';
import 'package:unheard_voices/features/home/presentation/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Use the full width and height of the screen
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/Images/logo.png',
          // fit: BoxFit
          //     .contain, // Ensure the image fits the screen while maintaining aspect ratio
        ),
      ),
    );
  }
}
