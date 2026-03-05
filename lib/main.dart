import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/main_app/screen/main_app_screen.dart';

void main() {
  runApp(const GrandHotel());
}

class GrandHotel extends StatelessWidget {
  const GrandHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainAppScreen(),
    );
  }
}
