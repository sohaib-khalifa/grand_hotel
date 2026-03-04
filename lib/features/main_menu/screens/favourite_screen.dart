import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/widgets/category_chip.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/widget/item_favourite.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: SvgPicture.asset(AppImages.arrowSvgBack),
        ),
        title: Text(
          'My Favorite',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.sortSvg),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.grey200),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.grey500,
                    ),
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                      color: AppColors.grey500,
                      fontSize: 16,
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 24,
                          width: 1,
                          color: AppColors.grey300,
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          AppImages.filterSvg,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            AppColors.grey500,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    CategoryChip(
                      label: 'All',
                      isSelected: selectedCategory == 'All',
                      onTap: () => setState(() => selectedCategory = 'All'),
                    ),
                    const SizedBox(width: 10),
                    CategoryChip(
                      label: 'Villas',
                      icon: AppImages.village,
                      isSelected: selectedCategory == 'Villas',
                      onTap: () => setState(() => selectedCategory = 'Villas'),
                    ),
                    const SizedBox(width: 10),
                    CategoryChip(
                      label: 'Hotels',
                      icon: AppImages.hotel,
                      isSelected: selectedCategory == 'Hotels',
                      onTap: () => setState(() => selectedCategory = 'Hotels'),
                    ),
                    const SizedBox(width: 10),
                    CategoryChip(
                      label: 'Apartment',
                      icon: AppImages.apartement,
                      isSelected: selectedCategory == 'Apartment',
                      onTap: () =>
                          setState(() => selectedCategory = 'Apartment'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.62,
                ),
                itemBuilder: (context, index) {
                  return ItemFavourite(model: favourite[index]);
                },
                itemCount: favourite.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
