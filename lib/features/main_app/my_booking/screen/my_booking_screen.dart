import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/models/booking_item.dart';
import 'package:grand_hotel/features/main_app/my_booking/widgets/booking_card.dart';
import 'package:grand_hotel/features/main_app/my_booking/widgets/booking_tab_switcher.dart';
import 'package:grand_hotel/features/main_app/shared/widgets/app_search_bar.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_data.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  int tabIndex = 0;

  List<BookingItem> get currentList => tabIndex == 0 ? bookedBookings : bookingHistory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const AppSearchBar(hint: 'Search...'),
          const SizedBox(height: 14),
          BookingTabSwitcher(
            tabIndex: tabIndex,
            onChanged: (index) => setState(() => tabIndex = index),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: ListView.separated(
              itemCount: currentList.length,
              separatorBuilder: (_, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return BookingCard(item: currentList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
