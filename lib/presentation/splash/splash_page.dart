import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:go_router/go_router.dart';

const String logoSvgPath = "assets/images/logo.svg";
const String ellipse_1 = "assets/images/ellipse_splash_1.svg";
const String ellipse_2 = "assets/images/ellipse_splash_2.svg";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => context.toOnboarding());
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          Center(child: SvgPicture.asset(logoSvgPath)),
          Positioned(
            bottom: 1,
            right: 1,
            child: SvgPicture.asset(ellipse_1)),
          
          Positioned(
            top: 1,
            left: 1,
            child: SvgPicture.asset(ellipse_2))
        ],
      ),
    );
  }
}
