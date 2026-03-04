import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:grand_hotel/features/booking_flow/screens/request_to_book_screen.dart';
import 'package:grand_hotel/features/main_app/screens/main_app_screen.dart';

void main() {
  runApp(const GrandHotel());
}

class GrandHotel extends StatelessWidget {
  const GrandHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? const SizedBox.shrink(),
        );
      },
      // home: const SplashScreen(),
      // home: const RequestToBookScreen(),
      home: MainAppScreen(),
    );
  }
}
