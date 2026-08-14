import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onTap;
  const AppButton({
    super.key,
    required this.btnText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: onTap,
      child: Container(
        height: 62,
        decoration: BoxDecoration(
          color: Color(0xFFFF7622),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(color: Colors.white, fontFamily: "sen"),
          ),
        ),
      ),
    );
  }
}
