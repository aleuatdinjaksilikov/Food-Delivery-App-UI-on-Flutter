import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/presentation/auth/signUp/sign_up_desktop.dart';
import 'package:food_delivery_app_ui/presentation/auth/signUp/sign_up_mobile.dart';
import 'package:food_delivery_app_ui/presentation/auth/signUp/sign_up_tablet.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if (constraints.maxWidth >= 1024) {
          return const SignUpDesktop();
        } else if (constraints.maxWidth >= 600) {
          return const SignUpTablet();
        } else {
          return const SignUpMobile();
        }
    });
  }
}