import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_fonts.dart';

/// Grand Hotel – Typography
/// Fonts: Inter · Plus Jakarta Sans · Jost
/// Source: Design Style Guide – 02. Typography

class AppTextStyles {
  AppTextStyles._();
  /*
  ──────────────────────────────────────────────
  قبل متشم وحنا ف رمضان يخويا كدا 
  بوص كدا
  القاعدة:
  إزاي تلاقي الـ 
  style من فيجما 
  في الكود
  ──────────────────────────────────────────────

  1- حط اسم الخط الأول  →  inter  أو  jakarta  أو  jost
  2- شيل  Body Text/  وحطها  Body
  3- شيل الـ  ==>  /

  أمثلة:
  Figma                        الكود
  ─────────────────────────────────────────────
  Body Text/Large/SemiBold  →  jakartaBodyLargeSemibold
  Body Text/Small/Regular   →  jakartaBodySmallRegular
  Heading 1                 →  jakartaHeading1
  Big Title                 →  jakartaBigTitle
  ─────────────────────────────────────────────
  نفس القاعدة للـ inter والـ jost
*/
  // ─────────────────────────────────────────────────────────────
  // Font weights
  // ─────────────────────────────────────────────────────────────
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _semibold = FontWeight.w600;
  static const FontWeight _bold = FontWeight.w700;

  // ═════════════════════════════════════════════════════════════
  // INTER  →  prefix: inter
  // ═════════════════════════════════════════════════════════════

  /// fontSize: 32, fontWeight: _bold, height: 1.3
  static const TextStyle interHeading1 = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 32,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 28, fontWeight: _bold, height: 1.3
  static const TextStyle interHeading2 = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 28,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 24, fontWeight: _bold, height: 1.3
  static const TextStyle interHeading3 = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 24,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 18, fontWeight: _bold, height: 1.4
  static const TextStyle interBigTitle = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 18,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _bold, height: 1.4
  static const TextStyle interTitle = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 16,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle interCaption = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle interParagraph = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _bold, height: 1.4, letterSpacing: 0.2
  static const TextStyle interBigButton = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 14,
    fontWeight: _bold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.4, letterSpacing: 0.2
  static const TextStyle interSmallButton = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.4
  static const TextStyle interSmallText = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.4,
  );

  /// fontSize: 18, fontWeight: _semibold, height: 1.5
  static const TextStyle interBodyLargeSemibold = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 18,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _medium, height: 1.5
  static const TextStyle interBodyLargeMedium = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 18,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _regular, height: 1.5
  static const TextStyle interBodyLargeRegular = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 18,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _semibold, height: 1.5
  static const TextStyle interBodyMediumSemibold = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 16,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _medium, height: 1.5
  static const TextStyle interBodyMediumMedium = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 16,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle interBodyMediumRegular = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _semibold, height: 1.5
  static const TextStyle interBodySmallSemibold = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 14,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _medium, height: 1.5
  static const TextStyle interBodySmallMedium = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 14,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle interBodySmallRegular = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.5
  static const TextStyle interBodyXSmallSemibold = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _medium, height: 1.5
  static const TextStyle interBodyXSmallMedium = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 12,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.5
  static const TextStyle interBodyXSmallRegular = TextStyle(
    fontFamily: AppFonts.inter,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.5,
  );

  // ═════════════════════════════════════════════════════════════
  // PLUS JAKARTA SANS  →  prefix: jakarta
  // ═════════════════════════════════════════════════════════════
  /// fontSize: 32, fontWeight: _bold, height: 1.3
  static const TextStyle jakartaHeading1 = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 32,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 28, fontWeight: _bold, height: 1.3
  static const TextStyle jakartaHeading2 = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 28,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 24, fontWeight: _bold, height: 1.3
  static const TextStyle jakartaHeading3 = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 24,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 18, fontWeight: _bold, height: 1.4
  static const TextStyle jakartaBigTitle = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _bold, height: 1.4
  static const TextStyle jakartaTitle = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaCaption = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaParagraph = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _bold, height: 1.4, letterSpacing: 0.2
  static const TextStyle jakartaBigButton = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _bold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.4, letterSpacing: 0.2
  static const TextStyle jakartaSmallButton = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.4
  static const TextStyle jakartaSmallText = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.4,
  );

  /// fontSize: 18, fontWeight: _semibold, height: 1.5
  static const TextStyle jakartaBodyLargeSemibold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _medium, height: 1.5
  static const TextStyle jakartaBodyLargeMedium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaBodyLargeRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 18,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _semibold, height: 1.5
  static const TextStyle jakartaBodyMediumSemibold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _medium, height: 1.5
  static const TextStyle jakartaBodyMediumMedium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaBodyMediumRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _semibold, height: 1.5
  static const TextStyle jakartaBodySmallSemibold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _medium, height: 1.5
  static const TextStyle jakartaBodySmallMedium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaBodySmallRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.5
  static const TextStyle jakartaBodyXSmallSemibold = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _medium, height: 1.5
  static const TextStyle jakartaBodyXSmallMedium = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.5
  static const TextStyle jakartaBodyXSmallRegular = TextStyle(
    fontFamily: AppFonts.plusJakartaSans,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.5,
  );

  // ═════════════════════════════════════════════════════════════
  // JOST  →  prefix: jost
  // ═════════════════════════════════════════════════════════════
  /// fontSize: 32, fontWeight: _bold, height: 1.3
  static const TextStyle jostHeading1 = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 32,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 28, fontWeight: _bold, height: 1.3
  static const TextStyle jostHeading2 = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 28,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 24, fontWeight: _bold, height: 1.3
  static const TextStyle jostHeading3 = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 24,
    fontWeight: _bold,
    height: 1.3,
  );

  /// fontSize: 18, fontWeight: _bold, height: 1.4
  static const TextStyle jostBigTitle = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 18,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _bold, height: 1.4
  static const TextStyle jostTitle = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 16,
    fontWeight: _bold,
    height: 1.4,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle jostCaption = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle jostParagraph = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _bold, height: 1.4, letterSpacing: 0.2
  static const TextStyle jostBigButton = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 14,
    fontWeight: _bold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.4, letterSpacing: 0.2
  static const TextStyle jostSmallButton = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.4,
    letterSpacing: 0.2,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.4
  static const TextStyle jostSmallText = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.4,
  );

  /// fontSize: 18, fontWeight: _semibold, height: 1.5
  static const TextStyle jostBodyLargeSemibold = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 18,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _medium, height: 1.5
  static const TextStyle jostBodyLargeMedium = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 18,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 18, fontWeight: _regular, height: 1.5
  static const TextStyle jostBodyLargeRegular = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 18,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _semibold, height: 1.5
  static const TextStyle jostBodyMediumSemibold = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 16,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _medium, height: 1.5
  static const TextStyle jostBodyMediumMedium = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 16,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 16, fontWeight: _regular, height: 1.5
  static const TextStyle jostBodyMediumRegular = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 16,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _semibold, height: 1.5
  static const TextStyle jostBodySmallSemibold = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 14,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _medium, height: 1.5
  static const TextStyle jostBodySmallMedium = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 14,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 14, fontWeight: _regular, height: 1.5
  static const TextStyle jostBodySmallRegular = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 14,
    fontWeight: _regular,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _semibold, height: 1.5

  static const TextStyle jostBodyXSmallSemibold = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 12,
    fontWeight: _semibold,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _medium, height: 1.5
  static const TextStyle jostBodyXSmallMedium = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 12,
    fontWeight: _medium,
    height: 1.5,
  );

  /// fontSize: 12, fontWeight: _regular, height: 1.5
  static const TextStyle jostBodyXSmallRegular = TextStyle(
    fontFamily: AppFonts.jost,
    fontSize: 12,
    fontWeight: _regular,
    height: 1.5,
  );
}
