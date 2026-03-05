import 'package:flutter/material.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.label,
    required this.value,
    this.isBold = false,
  });

  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isBold
              ? AppTextStyles.interBodySmallSemibold.copyWith(
                  color: AppColors.grey800,
                )
              : AppTextStyles.interBodyXSmallRegular.copyWith(
                  color: AppColors.grey500,
                ),
        ),
        Text(
          value,
          style: isBold
              ? AppTextStyles.interBodySmallSemibold.copyWith(
                  color: AppColors.grey800,
                )
              : AppTextStyles.interBodyXSmallRegular.copyWith(
                  color: AppColors.grey700,
                ),
        ),
      ],
    );
  }
}
