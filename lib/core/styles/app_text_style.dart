import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static const FontWeight _semibold = FontWeight.w600;

  static const TextStyle jakartaBodyMediumSemibold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _semibold,
    height: 1.4,
  );

  static const TextStyle jostBodyMediumSemibold = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 13,
    fontWeight: _semibold,
    height: 1.4,
  );
}
