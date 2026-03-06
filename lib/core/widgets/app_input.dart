import 'package:flutter/material.dart';
import 'package:grand_hotel/core/constants/app_fonts.dart';
import 'package:grand_hotel/core/styles/app_color.dart';
import 'package:grand_hotel/core/styles/app_text_style.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.validator,
    this.keyboardType,
    this.enabled = true,
    this.onTap,
    this.onChanged,
    this.controller,
    this.obscureText = false,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? enabled;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;

  static final OutlineInputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      style: const TextStyle(
        fontFamily: AppFonts.inter,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle:
            hintStyle ??
            AppTextStyles.jostBodyMediumSemibold.copyWith(
              color: AppColors.hintStyleColorAppInput,
            ),
        filled: true,
        fillColor: const Color(0xFFF6F6F6),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        errorBorder: _border,
        focusedErrorBorder: _border,
        disabledBorder: _border,
      ),
      onTap: onTap,
    );
  }
}
