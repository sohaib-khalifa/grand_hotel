import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/functions/navigation.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/features/main_menu/data/product_model.dart';
import 'package:grand_hotel/features/main_menu/widget/item_best.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel model;
  const DetailScreen({super.key, required this.model});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late ScrollController _scrollController;
  double _opacity = 0;
  static const double _fadeStart = 180.0;
  static const double _fadeEnd = 300.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        double offset = _scrollController.offset;
        setState(() {
          _opacity = ((offset - _fadeStart) / (_fadeEnd - _fadeStart)).clamp(
            0,
            1,
          );
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    headerImage(),
                    Transform.translate(
                      offset: const Offset(0, -30),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            titleSection(),
                            const SizedBox(height: 24),
                            facilitiesSection(),
                            const SizedBox(height: 24),
                            descriptionSection(),
                            const SizedBox(height: 24),
                            locationSection(),
                            const SizedBox(height: 24),
                            reviewsSection(),
                            const SizedBox(height: 43),
                            recommendationSection(),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          dynamicAppBar(),

          bookingBottomBar(),
        ],
      ),
    );
  }

  Widget headerImage() {
    return SizedBox(
      height: 380,
      width: double.infinity,
      child: Hero(
        tag: widget.model.image,
        child: Image.asset(widget.model.image, fit: BoxFit.cover),
      ),
    );
  }

  Widget dynamicAppBar() {
    Color iconColor = Color.lerp(
      Colors.white.withValues(alpha: 0.7),
      Colors.black,
      _opacity,
    )!;
    Color titleColor = Color.lerp(
      Colors.white.withValues(alpha: 0.9),
      Colors.black,
      _opacity,
    )!;
    Color iconBg = Color.lerp(
      Colors.black.withValues(alpha: 0.25),
      Colors.transparent,
      _opacity,
    )!;
    Color bg = Colors.white.withOpacity(_opacity);

    return Container(
      decoration: _opacity > 0.95
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            )
          : BoxDecoration(color: bg),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              appBarButton(
                Icons.arrow_back,
                iconColor,
                iconBg,
                () => popFrom(context),
              ),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
                child: const Text("Detail"),
              ),
              appBarButton(Icons.more_vert, iconColor, iconBg, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarButton(
    IconData icon,
    Color iconColor,
    Color bgColor,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Icon(icon, color: iconColor, size: 22),
      ),
    );
  }

  Widget titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "The Aston Vill Hotel",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primary700.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                AppImages.cubicSvg,
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: AppColors.primary700,
              size: 20,
            ),
            const SizedBox(width: 4),
            Text(
              "Veum Point, Michikoton",
              style: TextStyle(color: AppColors.grey400, fontSize: 14),
            ),
            const SizedBox(width: 15),
            const Icon(Icons.star, color: Colors.amber, size: 18),
            const SizedBox(width: 4),
            const Text(
              "4.6",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }

  Widget facilitiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sectionTitle("Common Facilities"),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            facilityItem(AppImages.windSvg, "AC"),
            facilityItem(AppImages.restaurantSvg, "Restaurant"),
            facilityItem(AppImages.swimSvg, "Swimming\nPool"),
            facilityItem(AppImages.calendarSvg, "24-Hours\nFront Desk"),
          ],
        ),
      ],
    );
  }

  Widget facilityItem(String icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.primary700.withValues(alpha: 0.1),
          child: SvgPicture.asset(icon, height: 20),
        ),
        const SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }

  Widget descriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Description",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "The ideal place for those looking for a luxurious\nand tranquil holiday experience with stunning\nsea views.",
          style: TextStyle(color: AppColors.grey500, height: 1.6, fontSize: 15),
        ),
      ],
    );
  }

  Widget locationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sectionTitle("Location"),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Open Map",
                style: TextStyle(
                  color: AppColors.primary700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade100, width: 1.5),
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                    child: Image.asset(
                      "assets/images/map_1.png",
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary800.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.locationSvg,
                      height: 22,
                      colorFilter: const ColorFilter.mode(
                        AppColors.primary800,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "9175 Chestnut Street Rome, NY 13440",
                        style: TextStyle(
                          color: Color(0xFF8F92A1),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget reviewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sectionTitle("Reviews"),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(
                  color: AppColors.primary700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        reviewTile(
          "Kim Borrdy",
          AppImages.person_1,
          "4.5",
          "Amazing!  The room is good than the picture.\nThanks for amazing experience!",
        ),
        reviewTile(
          "Another User",
          AppImages.person_2,
          "5.0",
          "The service is on point, and I really like the\nfacilities. Good job!",
        ),
      ],
    );
  }

  Widget reviewTile(String name, String image, String rating, String comment) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipOval(
        child: Image.asset(
          image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) =>
              const CircleAvatar(radius: 25, child: Icon(Icons.person)),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              Text(rating, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
      subtitle: Text(
        comment,
        style: const TextStyle(color: Color(0xFF8F92A1), fontSize: 14),
      ),
    );
  }

  Widget recommendationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sectionTitle("Recommendation"),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: bestToday.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: ItemBest(model: bestToday[index]),
            ),
          ),
        ),
      ],
    );
  }

  Widget bookingBottomBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(35)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(color: AppColors.grey400, fontSize: 14),
                ),
                Text(
                  "\$120.00",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary800,
                minimumSize: const Size(185, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Booking Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
