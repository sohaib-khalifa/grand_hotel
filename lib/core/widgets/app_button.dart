import 'package:flutter/material.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 56,
    this.textStyle,
    this.backgroundColor = AppColors.primary800,
  });

  final void Function() onPressed;
  final String title;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: backgroundColor,
        minimumSize: Size(width!, height!),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style:
            textStyle ??
            AppTextStyles.jakartaBodyMediumSemibold.copyWith(
              color: AppColors.hintStyleColorAppButtom,
              letterSpacing: 0.5,
            ),
      ),
    );
  }
}
