import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/app_route.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: router,
      theme: ThemeData(
        brightness: .light
      ),
    );
  }
}

