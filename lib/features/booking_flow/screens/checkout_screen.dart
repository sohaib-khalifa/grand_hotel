import 'package:flutter/material.dart';

import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/app_button.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
import 'package:grand_hotel/features/booking_flow/widgets/booking_row.dart';
import 'package:grand_hotel/features/booking_flow/widgets/dashed_divider.dart';
import 'package:grand_hotel/features/booking_flow/widgets/price_row.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
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

        title: Text(
          'Checkout',
          style: AppTextStyles.interBodyMediumSemibold.copyWith(
            color: AppColors.grey800,
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

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // ── Hotel Card ──────────────────────────────
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            AppImages.astonVillHotel,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'The Aston Vill Hotel',
                                      style: AppTextStyles
                                          .interBodySmallSemibold
                                          .copyWith(
                                            color: AppColors.grey800,
                                            fontSize: 15,
                                          ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star_rounded,
                                    size: 16,
                                    color: Color(0xFFFFC107),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    '4.7',
                                    style: AppTextStyles.interBodyXSmallSemibold
                                        .copyWith(color: AppColors.grey800),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 13,
                                    color: AppColors.grey400,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    'Veum Paint, Michikoton',
                                    style: AppTextStyles.interBodyXSmallRegular
                                        .copyWith(color: AppColors.grey400),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$120',
                                      style: AppTextStyles
                                          .interBodySmallSemibold
                                          .copyWith(
                                            color: AppColors.primary600,
                                            fontSize: 15,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' /night',
                                      style: AppTextStyles
                                          .interBodyXSmallRegular
                                          .copyWith(color: AppColors.grey400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ── Single card: Booking + Price ────────────
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: const Color(0xFFF0F0F0)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ── Your Booking ──
                        Text(
                          'Your Booking',
                          style: AppTextStyles.interBodySmallSemibold.copyWith(
                            color: AppColors.primary600,
                          ),
                        ),
                        const SizedBox(height: 4),

                        BookingRow(
                          iconPath: AppImages.calendar2Svg,
                          label: 'Dates',
                          value: '12 - 14 Nov 2024',
                        ),
                        BookingRow(
                          iconPath: AppImages.userSvg,
                          label: 'Guest',
                          value: '2 Guests (1 Room)',
                        ),
                        BookingRow(
                          // b
                          // iconPath: AppImages.calendar2Svg,
                          iconPath: AppImages.buildingNewSvg,
                          label: 'Room type',
                          value: 'Queen Room',
                        ),
                        BookingRow(
                          iconPath: AppImages.callSvg,
                          label: 'Phone',
                          value: '0214345646',
                        ),

                        // ── Dashed divider ──
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          child: DashedDivider(),
                        ),

                        // ── Price Details ──
                        Text(
                          'Price Details',
                          style: AppTextStyles.interBodySmallSemibold.copyWith(
                            color: AppColors.primary600,
                          ),
                        ),
                        const SizedBox(height: 14),

                        PriceRow(label: 'Price', value: '\$139.00'),
                        const SizedBox(height: 10),
                        PriceRow(label: 'Admin fee', value: '\$2.50'),
                        SizedBox(height: 12),
                        PriceRow(
                          label: 'Total price',
                          value: '\$141.50',
                          isBold: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(32, 12, 32, 42),
            child: AppButton(
              onPressed: () {},
              title: 'Select Payment',
              backgroundColor: AppColors.primary600,
            ),
          ),
        ],
      ),
    );
  }
}
