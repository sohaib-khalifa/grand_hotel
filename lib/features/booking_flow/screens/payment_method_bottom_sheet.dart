import 'package:flutter/material.dart';

import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/app_button.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
import 'package:grand_hotel/features/booking_flow/widgets/payment_option.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const PaymentMethodBottomSheet(),
    );
  }

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  // 0 = MasterCard, 1 = Visa, null = none
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Handle ──
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),

          // ── Title + Close ──
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Method',
                style: AppTextStyles.interBodyMediumSemibold.copyWith(
                  color: AppColors.grey800,
                  fontSize: 18,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.close,
                  size: 22,
                  color: AppColors.grey700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // ── MasterCard ──
          PaymentOption(
            icon: CustomSvgPicture(
              path: AppImages.mastercardSvg,
              width: 38,
              height: 24,
            ),
            label: 'Master Card',
            isSelected: _selected == 0,
            onTap: () => setState(() => _selected = 0),
          ),
          const SizedBox(height: 12),

          // ── Visa ──
          PaymentOption(
            icon: CustomSvgPicture(
              path: AppImages.visaSvg,
              width: 38,
              height: 24,
            ),
            label: 'Visa',
            isSelected: _selected == 1,
            onTap: () => setState(() => _selected = 1),
          ),
          const SizedBox(height: 12),

          // ── Add Debit Card ──
          PaymentOption(
            icon: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: AppColors.primary600,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomSvgPicture(
                  path: AppImages.addCircleSvg,
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            label: 'Add Debit Card',
            isSelected: false,
            showCheckbox: false,
            onTap: () {},
          ),
          const SizedBox(height: 24),

          // ── Confirm and Pay ──
          AppButton(
            onPressed: () => Navigator.pop(context),
            title: 'Confirm and Pay',
            backgroundColor: AppColors.primary600,
          ),
        ],
      ),
    );
  }
}
