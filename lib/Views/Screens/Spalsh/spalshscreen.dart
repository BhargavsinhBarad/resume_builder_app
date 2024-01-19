import 'dart:async';

import 'package:flutter/material.dart';

import '../../Utils/global.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 8),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return Scaffold(
      backgroundColor: Global.themecolor,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("lib/Assets/Icons/resume.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
