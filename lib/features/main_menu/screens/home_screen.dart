import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/screens/best_screen.dart';
import 'package:grand_hotel/features/main_menu/screens/favourite_screen.dart';
import 'package:grand_hotel/features/main_menu/screens/most_popular.dart';
import 'package:grand_hotel/features/main_menu/screens/recomanded.dart';
import 'package:grand_hotel/features/main_menu/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(AppImages.profile),
                ),
                title: const Text(
                  'Matr Kohler',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.locationSvg,
                      height: 14,
                      colorFilter: const ColorFilter.mode(
                        AppColors.grey500,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'San Diego, CA',
                      style: TextStyle(fontSize: 14, color: AppColors.grey500),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () => pushTo(context, SearchScreen()),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: SvgPicture.asset(
                        AppImages.searchSvg,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                      onPressed: () => pushTo(context, FavouriteScreen()),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: SvgPicture.asset(
                        AppImages.heartSvg,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    const MostPopular(),
                    const SizedBox(height: 24),
                    const RecommendedSection(),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hotel Near You',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        AppImages.map,
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const BestScreen(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
