
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';
import 'package:grand_hotel/core/widgets/app_button.dart';
import 'package:grand_hotel/core/widgets/custom_svg_picture.dart';
import 'package:grand_hotel/features/booking_flow/checkout/screen/checkout_screen.dart';
import 'package:grand_hotel/features/booking_flow/request_to_book/widgets/circle_icon_button.dart';
import 'package:grand_hotel/features/booking_flow/request_to_book/widgets/date_card.dart';
import 'package:grand_hotel/features/booking_flow/request_to_book/widgets/payment_row.dart';

class RequestToBookScreen extends StatefulWidget {
  const RequestToBookScreen({super.key});

  @override
  State<RequestToBookScreen> createState() => _RequestToBookScreenState();
}

class _RequestToBookScreenState extends State<RequestToBookScreen> {
  int _guestCount = 1;
  DateTime? _checkInDate;
  DateTime? _checkOutDate;

  String _formatDate(DateTime? date) {
    if (date == null) return '-- --, ----';
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }

  Future<void> _openDateRangePicker() async {
    List<DateTime?> tempDates = [_checkInDate, _checkOutDate];

    await showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 24, 8, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Select Date',
                  style: AppTextStyles.interBodyMediumSemibold.copyWith(
                    color: AppColors.grey800,
                  ),
                ),
                const SizedBox(height: 12),
                CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.range,
                    selectedDayHighlightColor: AppColors.primary600,
                    selectedRangeHighlightColor: AppColors.primary500
                        .withValues(alpha: 0.15),
                    centerAlignModePicker: true,
                    calendarViewScrollPhysics:
                        const NeverScrollableScrollPhysics(),
                    disableModePicker: false,
                    weekdayLabels: const [
                      'Sun',
                      'Mon',
                      'Tue',
                      'Wed',
                      'Thu',
                      'Fri',
                      'Sat',
                    ],
                    weekdayLabelTextStyle: AppTextStyles.interBodyXSmallMedium
                        .copyWith(color: AppColors.grey500),
                    dayTextStyle: AppTextStyles.interBodyXSmallRegular.copyWith(
                      color: AppColors.grey800,
                    ),
                    selectedDayTextStyle: AppTextStyles.interBodyXSmallSemibold
                        .copyWith(color: AppColors.white),
                    disabledDayTextStyle: AppTextStyles.interBodyXSmallRegular
                        .copyWith(color: AppColors.grey200),
                    todayTextStyle: AppTextStyles.interBodyXSmallSemibold
                        .copyWith(color: AppColors.primary600),
                    controlsTextStyle: AppTextStyles.interBodySmallSemibold
                        .copyWith(color: AppColors.grey800),
                    lastMonthIcon: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey100),
                      ),
                      child: const Icon(
                        Icons.chevron_left,
                        size: 18,
                        color: AppColors.grey600,
                      ),
                    ),
                    nextMonthIcon: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey100),
                      ),
                      child: const Icon(
                        Icons.chevron_right,
                        size: 18,
                        color: AppColors.grey600,
                      ),
                    ),
                  ),
                  value: tempDates,
                  onValueChanged: (dates) {
                    setDialogState(() {
                      tempDates = dates;
                    });
                  },
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () => Navigator.pop(ctx),
                          child: Text(
                            'Cancel',
                            style: AppTextStyles.interBodySmallSemibold
                                .copyWith(color: AppColors.error),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _checkInDate = tempDates.isNotEmpty
                                  ? tempDates[0]
                                  : null;
                              _checkOutDate = tempDates.length > 1
                                  ? tempDates[1]
                                  : null;
                            });
                            Navigator.pop(ctx);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            elevation: 0,
                          ),
                          child: Text(
                            'Apply',
                            style: AppTextStyles.interBigButton.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
          'Request to book',
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Date Section ──────────────────────────────
                  Text(
                    'Date',
                    style: AppTextStyles.interBodySmallSemibold.copyWith(
                      color: AppColors.grey800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: DateCard(
                          label: 'Check - In',
                          date: _formatDate(_checkInDate),
                          onTap: _openDateRangePicker,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: DateCard(
                          label: 'Check - Out',
                          date: _formatDate(_checkOutDate),
                          onTap: _openDateRangePicker,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // ── Guest Section ─────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Guest',
                        style: AppTextStyles.interBodySmallSemibold.copyWith(
                          color: AppColors.grey800,
                        ),
                      ),
                      Row(
                        children: [
                          CircleIconButton(
                            icon: Icons.remove,
                            onTap: () {
                              if (_guestCount > 1) {
                                setState(() => _guestCount--);
                              }
                            },
                            isOutlined: true,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '$_guestCount',
                            style: AppTextStyles.interBodySmallSemibold
                                .copyWith(color: AppColors.grey800),
                          ),
                          const SizedBox(width: 12),
                          CircleIconButton(
                            icon: Icons.add,
                            onTap: () => setState(() => _guestCount++),
                            isOutlined: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // ── Pay With Section ──────────────────────────
                  Text(
                    'Pay With',
                    style: AppTextStyles.interBodySmallSemibold.copyWith(
                      color: AppColors.grey800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.grey100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.grey25,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: CustomSvgPicture(
                              path: AppImages.emptyWalletSvg, // ✅
                              color: AppColors.grey500,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FastPayz',
                                style: AppTextStyles.interBodySmallSemibold
                                    .copyWith(color: AppColors.grey800),
                              ),
                              Text(
                                '******6587',
                                style: AppTextStyles.interBodyXSmallRegular
                                    .copyWith(color: AppColors.grey500),
                              ),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: AppColors.primary500),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'Edit',
                            style: AppTextStyles.interBodyXSmallMedium.copyWith(
                              color: AppColors.primary500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ── Payment Details ───────────────────────────
                  Text(
                    'Payment Details',
                    style: AppTextStyles.interBodySmallSemibold.copyWith(
                      color: AppColors.grey800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  PaymentRow(label: 'Total : 2 Night', amount: '\$400'),
                  const SizedBox(height: 8),
                  PaymentRow(label: 'Cleaning Fee', amount: '\$5'),
                  const SizedBox(height: 8),
                  PaymentRow(label: 'Service Fee', amount: '\$5'),
                  const SizedBox(height: 16),
                  PaymentRow(
                    label: 'Total Payment:',
                    amount: '\$410',
                    isBold: true,
                  ),
                ],
              ),
            ),
          ),

          // ── Checkout Button ───────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 12, 32, 42),
            child: AppButton(
              onPressed: () {
                pushTo(context, CheckoutScreen());
              },
              title: 'Checkout',
              backgroundColor: AppColors.primary600,
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          //   child: SizedBox(
          //     width: double.infinity,
          //     height: 52,
          //     child: ElevatedButton(
          //       onPressed: () {
          //         pushTo(context, CheckoutScreen());
          //       },
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: AppColors.primary600,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(14),
          //         ),
          //         elevation: 0,
          //       ),
          //       child: Text(
          //         'Checkout',
          //         style: AppTextStyles.interBigButton.copyWith(
          //           color: AppColors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
