import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/screens/detail_screen.dart';

class ItemFavourite extends StatelessWidget {
  const ItemFavourite({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushTo(context, DetailScreen(model: model));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(model.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: SvgPicture.asset(
                  AppImages.heartGridSvg,
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xffEDB900), size: 18),
              const SizedBox(width: 4),
              Text(
                '4.4',
                style: TextStyle(
                  color: Color(0xffEDB900),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '(532)',
                style: TextStyle(color: AppColors.grey400, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            model.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            model.text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: AppColors.grey500, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                model.price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                'Per Night',
                style: TextStyle(color: AppColors.grey500, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
