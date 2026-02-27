import 'package:flutter/material.dart';

/// Grand Hotel - App Colors
/// Based on Design Style Guide

class AppColors {

static const Color hintStyleColorAppInput = Color(0xFF9CA4AB);
  static const Color hintStyleColorAppButtom = Color(0xFFFEFEFE);
  // ─── Primary Colors ───────────────────────────────────────────
  static const Color primary300 = Color(0xFF99CDF7);
  static const Color primary400 = Color(0xFF69B1F1);
  static const Color primary500 = Color(0xFF4593EC);
  static const Color primary600 = Color(0xFF3076E0);
  static const Color primary700 = Color(0xFF2761CE);
  static const Color primary800 = Color(0xFF2853AF);

  /// Default primary color
  static const Color primary = primary500;

  // ─── Secondary Colors ─────────────────────────────────────────
  static const Color secondary50 = Color(0xFFEBF2FF);
  static const Color secondary100 = Color(0xFFD0EAFE);
  static const Color secondary200 = Color(0xFFBFD8FE);
  static const Color secondary300 = Color(0xFF93C5FD);
  static const Color secondary400 = Color(0xFF60A5FA);
  static const Color secondary500 = Color(0xFF3B81F6);

  /// Default secondary color
  static const Color secondary = secondary500;

  // ─── Greyscale ────────────────────────────────────────────────
  
  static const Color grey0 = Color(0xFFFFFFFF);
  static const Color grey25 = Color(0xFFF6F8FA);
  static const Color grey50 = Color(0xFFECEFF3);
  static const Color grey100 = Color(0xFFDFE1E6);
  static const Color grey200 = Color(0xFFC1C7CF);
  static const Color grey300 = Color(0xFFA4ABB8);
  static const Color grey400 = Color(0xFF888897);
  static const Color grey500 = Color(0xFF666D80);
  static const Color grey600 = Color(0xFF353849);
  static const Color grey700 = Color(0xFF272B35);
  static const Color grey800 = Color(0xFF1A1B25);
  static const Color grey900 = Color(0xFF141414);

  static const Color white = grey0;
  static const Color black = grey900;

  // ─── Additional / Sky ─────────────────────────────────────────
  static const Color sky0 = Color(0xFFEFFBFF);
  static const Color sky25 = Color(0xFFD1F0F9);
  static const Color sky50 = Color(0xFF7EDCF1);
  static const Color sky100 = Color(0xFF33CFFF);
  static const Color sky200 = Color(0xFF106A97);
  static const Color sky300 = Color(0xFF0C4D6E);

  // ─── Alert / Success ──────────────────────────────────────────
  static const Color success0 = Color(0xFFEFFEFA);
  static const Color success25 = Color(0xFFDDF2EE);
  static const Color success50 = Color(0xFF9DE5D3);
  static const Color success100 = Color(0xFF40C4AA);
  static const Color success200 = Color(0xFF28F66E);
  static const Color success300 = Color(0xFF174E43);

  static const Color success = success100;

  // ─── Alert / Warning ──────────────────────────────────────────
  static const Color warning0 = Color(0xFFFFF7E0);
  static const Color warning25 = Color(0xFFF9ECCB);
  static const Color warning50 = Color(0xFFF3D882);
  static const Color warning100 = Color(0xFFFF8D4E);
  static const Color warning200 = Color(0xFF896321);
  static const Color warning300 = Color(0xFF5B3D1E);

  static const Color warning = warning100;

  // ─── Alert / Error ────────────────────────────────────────────
  static const Color error0 = Color(0xFFFEEFF2);
  static const Color error25 = Color(0xFFFADAE1);
  static const Color error50 = Color(0xFFE0B296);
  static const Color error100 = Color(0xFFDF1C41);
  static const Color error200 = Color(0xFF951220);
  static const Color error300 = Color(0xFF710E21);

  static const Color error = error100;

  // ─── Semantic aliases ─────────────────────────────────────────
  static const Color background = grey25;
  static const Color surface = white;
  static const Color textPrimary = grey800;
  static const Color textSecondary = grey500;
  static const Color textDisabled = grey300;
  static const Color border = grey100;
  static const Color divider = grey50;
}
