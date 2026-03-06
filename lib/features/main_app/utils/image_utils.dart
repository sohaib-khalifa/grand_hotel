import 'package:flutter/material.dart';

Widget netImg(
  String url, {
  required double w,
  required double h,
  required BoxFit fit,
}) {
  return Image.network(
    url,
    width: w,
    height: h,
    fit: fit,
    errorBuilder: (context, error, stackTrace) {
      return Container(
        width: w,
        height: h,
        alignment: Alignment.center,
        color: const Color(0xFFEFEFEF),
        child: const Icon(Icons.broken_image_outlined),
      );
    },
  );
}
