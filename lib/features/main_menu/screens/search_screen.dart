import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/widget/item_recomanded.dart';
import 'package:grand_hotel/features/main_menu/widget/recet__search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: SvgPicture.asset(
            AppImages.arrowSvgBack,
            color: AppColors.black,
          ),
        ),
        title: Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Searches',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Clear All',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.error,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Recet_Search(
                name: 'Golden Sands Retreat',
                text: 'Clearwater, FL',
              ),
              SizedBox(height: 24),
              Recet_Search(name: 'Crystal Peak Lodge', text: 'Aspen, CO'),
              SizedBox(height: 24),
              Recet_Search(name: 'Coral Bay Resort', text: 'Miami Beach, FL'),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recently Viewed',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
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
              SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: recomanded.length,
                itemBuilder: (context, index) {
                  return ItemRecomanded(model: recomanded[index]);
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  height: 32,
                  color: Color(0xffE9EBED),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
