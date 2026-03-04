import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/widgets/category_chip.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/widget/item_recomanded.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({super.key});

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recommended for you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        const SizedBox(height: 12),
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
                onTap: () => setState(() => selectedCategory = 'Apartment'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: recomanded.length,
          itemBuilder: (context, index) {
            return ItemRecomanded(model: recomanded[index]);
          },
          separatorBuilder: (context, index) =>
              const Divider(thickness: 1, height: 32, color: Color(0xffE9EBED)),
        ),
      ],
    );
  }
}
