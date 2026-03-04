import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';

class ItemBest extends StatelessWidget {
  const ItemBest({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.grey200
        )
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              model.image,
              width: 95,
              height: 95,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.locationSvg, color: AppColors.grey600,),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        model.text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.star,
                        color: Color(0xffEDB900), size: 18),
                    const SizedBox(width: 4),
                    const Text(
                      '4.4',
                      style: TextStyle(
                        color: Color(0xffEDB900),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '(532)',
                      style: TextStyle(
                        color: AppColors.grey400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Row(
                  children: [
                    Text(
                      model.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 4,),
                    const SizedBox(width: 8),
                    const Text(
                      '\$199',
                      style: TextStyle(
                        color: AppColors.error100,
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}