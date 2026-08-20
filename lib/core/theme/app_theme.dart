
import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/constants/app_colors.dart';

const String fontFamily = "sen";

final ThemeData lightTheme = ThemeData(
  brightness: .light,
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontFamily: fontFamily,
    ),
    displayMedium: TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontFamily: fontFamily,
    ),
    titleSmall: TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontFamily: fontFamily
    )
  )
);