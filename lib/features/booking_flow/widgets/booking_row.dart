import 'package:flutter/material.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';

class BookingRow extends StatelessWidget {
  const BookingRow({
    super.key,
    required this.iconPath,
    required this.label,
    required this.value,
  });

  final String iconPath;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CustomSvgPicture(
            path: iconPath,
            color: AppColors.grey500,
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: AppTextStyles.interBodyXSmallRegular.copyWith(
              color: AppColors.grey600,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: AppTextStyles.interBodyXSmallSemibold.copyWith(
              color: AppColors.grey800,
            ),
          ),
        ],
      ),
    );
  }
}
