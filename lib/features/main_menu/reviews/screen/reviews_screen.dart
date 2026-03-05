

import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
import 'package:grand_hotel/features/main_menu/reviews/data/review_model.dart';
import 'package:grand_hotel/features/main_menu/reviews/widgets/review_card.dart';
// import 'package:grand_hotel/core/constants/app_images.dart';
// import 'package:grand_hotel/core/styles/app_color.dart';
// import 'package:grand_hotel/core/styles/app_text_style.dart';
// import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
// import 'package:grand_hotel/features/main_menu/reviews/data/review_model.dart';
// import 'package:grand_hotel/features/main_menu/reviews/widgets/review_card.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  static const double _overallRating = 4.4;
  static const int _totalReviews = 532;
  static const Map<int, double> _ratingBars = {
    1: 0.05,
    2: 0.08,
    3: 0.06,
    4: 0.30,
    5: 0.65,
  };

  Widget _buildRatingBar(int star) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            '$star',
            style: AppTextStyles.interBodyXSmallRegular.copyWith(
              color: AppColors.grey500,
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 160,
            height: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                width: 160,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8ECF0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: _ratingBars[star] ?? 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary600,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              // child: LinearProgressIndicator(
              //   value: _ratingBars[star] ?? 0,
              //   backgroundColor: const Color(0xFFE8ECF0),
              //   valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary600),
              // ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.white,
        elevation: 0,
        leadingWidth: 56,
        centerTitle: true,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(40, 40),
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            icon: CustomSvgPicture(
              path: AppImages.customArrowBackSvg,
              color: AppColors.black,
              width: 20,
              height: 14,
            ),
          ),
        ),
        title: Text(
          'Reviews',
          style: AppTextStyles.interBodyMediumSemibold.copyWith(
            color: AppColors.grey800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list, color: AppColors.grey800),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // ── Rating Summary ────────────────────────────
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Left
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$_overallRating',
                      style: AppTextStyles.interBodyMediumSemibold.copyWith(
                        color: AppColors.grey800,
                        fontSize: 48,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: List.generate(
                        5,
                        (i) => Icon(
                          i < _overallRating.floor()
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded,
                          size: 22,
                          color: const Color(0xFFFFC107),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Based on $_totalReviews review',
                      style: AppTextStyles.interBodyXSmallRegular.copyWith(
                        color: AppColors.grey500,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // Right: rating bars
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [1, 2, 3, 4, 5].map(_buildRatingBar).toList(),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // ── Reviews List ──────────────────────────────
            Text(
              'Reviews ($_totalReviews)',
              style: AppTextStyles.interBodySmallSemibold.copyWith(
                color: AppColors.grey800,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dummyReviews.length,
              itemBuilder: (context, index) =>
                  ReviewCard(review: dummyReviews[index]),
            ),
          ],
        ),
      ),
    );
  }
}
