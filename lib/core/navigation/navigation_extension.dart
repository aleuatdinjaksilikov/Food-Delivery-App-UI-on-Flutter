import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext{
  void toLogin() => go(Routes.loginPage);
  void toHome() => go(Routes.homePage);
  void toSignUp() => push(Routes.signUpPage);
  void toOnboarding() => go(Routes.onBoarding);
  void toForgotPassword() => push(Routes.forgotPasswordPage);
  void toOtpVerification() => push(Routes.otpVerificationPage);
  void toAccessLocation() => go(Routes.accessLocationPage);
  void toSearch() => push(Routes.searchPage);
}