import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';

class DateCard extends StatelessWidget {
  const DateCard({super.key, required this.label, required this.date, this.onTap});
  final String label;
  final String date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.grey25,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomSvgPicture(
                  path: AppImages.calendarSvg, // ✅
                  color: AppColors.grey500,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(width: 6),
                Text(
                  label,
                  style: AppTextStyles.interBodyXSmallMedium.copyWith(
                    color: AppColors.grey500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              date,
              style: AppTextStyles.interBodySmallRegular.copyWith(
                color: AppColors.grey800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
