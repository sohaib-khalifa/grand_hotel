import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/screens/hotel_home_screen.dart';
import 'package:grand_hotel/features/main_app/screens/messages_screen.dart';
import 'package:grand_hotel/features/main_app/screens/my_booking_screen.dart';
import 'package:grand_hotel/features/main_app/screens/profile_screen.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_constants.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;

  static const List<Widget> _screens = [
    HotelHomeScreen(),
    MyBookingScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  static const List<BottomNavigationBarItem> _navigationItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: 'My Booking',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainAppColors.background,
      appBar: AppBar(
        backgroundColor: MainAppColors.background,
        elevation: 0,
        centerTitle: true,
        title: Text(
          MainAppTitles.tabs[currentIndex],
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
        leading: const SizedBox(),
        leadingWidth: 0,
      ),
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: _navigationItems,
      ),
      floatingActionButton: currentIndex == 2
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,
    );
  }
}
