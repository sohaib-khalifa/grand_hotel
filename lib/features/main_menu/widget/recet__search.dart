import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grand_hotel/core/constants/app_images.dart';
import 'package:grand_hotel/core/styles/app_color.dart';

class Recet_Search extends StatelessWidget {
  const Recet_Search({super.key, required this.name, required this.text});

  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(AppImages.hourSvg, height: 30, width: 30),
      title: Text(
        name,
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: AppColors.grey500,
        ),
      ),
    );
  }
}
