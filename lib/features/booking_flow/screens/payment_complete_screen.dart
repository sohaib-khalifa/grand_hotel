import 'package:flutter/material.dart';

import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';

class PaymentCompleteScreen extends StatelessWidget {
  const PaymentCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leadingWidth: 56,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(40, 40),
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              popFrom(context);
            },
            icon: CustomSvgPicture(
              path: AppImages.customArrowBackSvg,
              color: AppColors.black,
              width: 20,
              height: 14,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: AppColors.grey800),
          ),

          SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ── Illustration ──
              const SizedBox(height: 72),
              CustomSvgPicture(
                path: AppImages.illustrationSvg,
                width: 220,
                height: 220,
              ),

              // ── Title ──
              Text(
                'Payment Complete',
                style: AppTextStyles.interBodyMediumSemibold.copyWith(
                  color: AppColors.grey800,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),

              // ── Subtitle ──
              Text(
                'Etiam cras nec metus laoreet. Faucibus iaculis cras ut posuere.',
                textAlign: TextAlign.center,
                style: AppTextStyles.interBodyXSmallRegular.copyWith(
                  color: AppColors.grey500,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
