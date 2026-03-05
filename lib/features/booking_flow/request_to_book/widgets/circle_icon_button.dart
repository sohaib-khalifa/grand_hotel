import 'package:flutter/material.dart';
import 'package:grand_hotel/core/styles/app_color.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({super.key, 
    required this.icon,
    required this.onTap,
    required this.isOutlined,
  });
  final IconData icon;
  final VoidCallback onTap;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isOutlined ? AppColors.white : AppColors.primary500,
          border: isOutlined ? Border.all(color: AppColors.grey200) : null,
        ),
        child: Icon(
          icon,
          size: 16,
          color: isOutlined ? AppColors.grey600 : AppColors.white,
        ),
      ),
    );
  }
}
