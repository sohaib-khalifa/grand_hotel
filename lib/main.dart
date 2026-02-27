import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grand_hotel/features/onboarding/screens/splash_screen.dart';

void main() {
  runApp(const GrandHotel());
}

class GrandHotel extends StatelessWidget {
  const GrandHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const SplashScreen(),
    );
  }
}
