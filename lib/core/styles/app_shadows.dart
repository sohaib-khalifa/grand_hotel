import 'package:flutter/material.dart';

/// Grand Hotel – Shadows
/// Based on Design Style Guide – 04. Shadow

class AppShadows {
  /// XSmall
  static const List<BoxShadow> xSmall = [
    BoxShadow(color: Color(0x0A000000), blurRadius: 4, offset: Offset(0, 1)),
  ];

  /// Small
  static const List<BoxShadow> small = [
    BoxShadow(color: Color(0x0F000000), blurRadius: 8, offset: Offset(0, 2)),
  ];

  /// Medium
  static const List<BoxShadow> medium = [
    BoxShadow(color: Color(0x14000000), blurRadius: 16, offset: Offset(0, 4)),
  ];

  /// Large
  static const List<BoxShadow> large = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 24, offset: Offset(0, 8)),
  ];

  /// XLarge
  static const List<BoxShadow> xLarge = [
    BoxShadow(color: Color(0x1F000000), blurRadius: 32, offset: Offset(0, 12)),
  ];
  // – أقوى ظل
  /// XXLarge
  static const List<BoxShadow> xxLarge = [
    BoxShadow(color: Color(0x29000000), blurRadius: 48, offset: Offset(0, 16)),
  ];
}
