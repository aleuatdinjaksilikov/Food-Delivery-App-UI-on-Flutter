import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/presentation/auth/login/login_desktop.dart';
import 'package:food_delivery_app_ui/presentation/auth/login/login_mobile.dart';
import 'package:food_delivery_app_ui/presentation/auth/login/login_tablet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (context,constraints){
        if (constraints.maxWidth >= 1024) {
          return const LoginDesktop();
        } else if (constraints.maxWidth >= 600) {
          return const LoginTablet();
        } else {
          return const LoginMobile();
        }
      }
      );
  }
}
