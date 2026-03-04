import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/models/booking_item.dart';
import 'package:grand_hotel/features/main_app/utils/image_utils.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_constants.dart';
import 'package:grand_hotel/features/main_app/widgets/info_row.dart';

class BookingDetailScreen extends StatelessWidget {
  final BookingItem item;

  const BookingDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainAppColors.background,
      appBar: AppBar(
        backgroundColor: MainAppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Booking Detail',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: ListView(
            children: [
              const Text(
                'Your Hotel',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: netImg(item.image, w: 64, h: 64, fit: BoxFit.cover),
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
                                item.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const Icon(Icons.star, size: 16, color: Colors.amber),
                            const SizedBox(width: 4),
                            Text(
                              item.rating.toStringAsFixed(1),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 14,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                item.location,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$${item.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                              const TextSpan(
                                text: ' /night',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Spacer(),
                  Text('Open Map', style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: netImg(
                  'https://picsum.photos/seed/mapdetail/900/400',
                  w: double.infinity,
                  h: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Your Booking',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 10),
              InfoRow(
                icon: Icons.calendar_month_outlined,
                left: 'Dates',
                right: item.dates,
              ),
              const SizedBox(height: 10),
              InfoRow(
                icon: Icons.person_outline,
                left: 'Guest',
                right: item.guests,
              ),
              const SizedBox(height: 10),
              const InfoRow(
                icon: Icons.bed_outlined,
                left: 'Room type',
                right: 'Queen Room',
              ),
              const SizedBox(height: 10),
              const InfoRow(
                icon: Icons.phone_outlined,
                left: 'Phone',
                right: '0214354646',
              ),
              const SizedBox(height: 18),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: netImg(
                  'https://barcode.tec-it.com/barcode.ashx?data=06158310-5427-471d-af1f-bd9029b&code=Code128&translate-esc=on',
                  w: double.infinity,
                  h: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '06158310-5427-471d-af1f-bd9029b',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
