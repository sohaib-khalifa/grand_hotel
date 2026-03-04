import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffix,
    this.prefix,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.enabled = true,
    this.onTap,
    this.onChaged,
  });

  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool enabled;
  final Function()? onTap;
  final Function(String)? onChaged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefix: prefix,
        suffix: suffix,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
      onTap: onTap,
      onChanged: onChaged,
    );
  }
}
