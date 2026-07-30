import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/auth/forgotPassword/forgot_password_page.dart';
import 'package:food_delivery_app_ui/presentation/auth/login/login_page.dart';
import 'package:food_delivery_app_ui/presentation/auth/otpVerification/otp_verification_page.dart';
import 'package:food_delivery_app_ui/presentation/auth/signUp/sign_up_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> authRoutes = [
  GoRoute(
          path: Routes.loginPage,
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
        ),
        GoRoute(
          path: Routes.signUpPage,
          builder: (BuildContext context, GoRouterState state) {
            return SignUpPage();
          },
        ),

        GoRoute(
          path: Routes.forgotPasswordPage,
          builder: (BuildContext context, GoRouterState state) {
            return ForgotPasswordPage();
          },
        ),

        GoRoute(
          path: Routes.otpVerificationPage,
          builder: (BuildContext context, GoRouterState state) {
            return OtpVerificationPage();
          },
        ),
];