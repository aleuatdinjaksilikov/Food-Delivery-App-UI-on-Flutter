import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/constants/app_colors.dart';
import 'package:food_delivery_app_ui/core/constants/app_dimensions.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const CircleButton({super.key, required this.icon, required this.onTap, this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        height: AppDimensions.iconButtonSize,
        width: AppDimensions.iconButtonSize,
        decoration: const BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Icon(icon, size: AppDimensions.iconM, color: iconColor),
      ),
    );
  }
}