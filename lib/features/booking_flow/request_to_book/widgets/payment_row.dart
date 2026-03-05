import 'package:flutter/material.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({super.key, 
    required this.label,
    required this.amount,
    this.isBold = false,
  });
  final String label;
  final String amount;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    final style = isBold
        ? AppTextStyles.interBodySmallSemibold.copyWith(
            color: AppColors.grey800,
          )
        : AppTextStyles.interBodySmallRegular.copyWith(
            color: AppColors.grey500,
          );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style),
        Text(amount, style: style),
      ],
    );
  }
}
