import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/screens/detail_screen.dart';

class ItemRecomanded extends StatelessWidget {
  const ItemRecomanded({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushTo(context, DetailScreen(model: model));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                model.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffEDB900),
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            model.rating,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.locationSvg,
                        height: 12,
                        colorFilter: const ColorFilter.mode(
                          AppColors.grey500,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        model.text,
                        style: const TextStyle(
                          color: AppColors.grey500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        model.price,
                        style: const TextStyle(
                          color: AppColors.primary700,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        " /night",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
