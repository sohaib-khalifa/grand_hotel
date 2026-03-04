import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
import 'package:grand_hotel/features/main_menu/screens/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text('My Book')),
    Center(child: Text('Message')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(
            top: BorderSide(color: AppColors.grey100, width: 1.0),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppImages.homeSvg,
                color: AppColors.grey500,
                width: 24,
                height: 24,
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.homeSvg,
                color: AppColors.primary800,
                width: 24,
                height: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppImages.myBookSvg,
                color: AppColors.grey500,
                width: 24,
                height: 24,
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.myBookSvg,
                color: AppColors.primary800,
                width: 24,
                height: 24,
              ),
              label: 'My Booking',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppImages.messageSvg,
                color: AppColors.grey500,
                width: 24,
                height: 24,
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.messageSvg,
                color: AppColors.primary800,
                width: 24,
                height: 24,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: AppImages.profileSvg,
                color: AppColors.grey500,
                width: 24,
                height: 24,
              ),
              activeIcon: CustomSvgPicture(
                path: AppImages.profileSvg,
                color: AppColors.primary800,
                width: 24,
                height: 24,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
