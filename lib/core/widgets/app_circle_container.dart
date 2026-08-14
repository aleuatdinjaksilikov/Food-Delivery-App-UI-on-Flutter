import 'package:flutter/material.dart';

class AppCircleContainer extends StatelessWidget {
  final VoidCallback onTap;
  final Color bgColor;
  final Color? frgColor;
  final double radius;
  final IconData icon;
  const AppCircleContainer({
    super.key,
    required this.bgColor,
    required this.radius,
    required this.icon,
    this.frgColor = const Color(0xFFFFFFFF), 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        foregroundColor: frgColor,
        backgroundColor: bgColor,
        radius: radius,
        child: Icon(icon),
      ),
    );
  }
}
