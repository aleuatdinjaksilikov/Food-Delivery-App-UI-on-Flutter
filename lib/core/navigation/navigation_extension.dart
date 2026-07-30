import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext{
  void goToLogin() => go(Routes.loginPage);
  void goToHome() => go(Routes.homePage);
  void pushToSignUp() => push(Routes.signUpPage);
  void goToOnboarding() => go(Routes.onBoarding);
  void pushToForgotPassword() => push(Routes.forgotPasswordPage);
  void pushToOtpVerification() => push(Routes.otpVerificationPage);
  void goToAccessLocation() => go(Routes.accessLocationPage);
  void pushToSearch() => push(Routes.searchPage);
  void pushToFoodDetail() => push(Routes.foodDetailPage);
}