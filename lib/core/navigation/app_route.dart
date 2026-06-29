import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/auth/login/login_page.dart';
import 'package:food_delivery_app_ui/presentation/auth/signUp/sign_up_page.dart';
import 'package:food_delivery_app_ui/presentation/home/home_page.dart';
import 'package:food_delivery_app_ui/presentation/onBoarding/on_boarding_page.dart';
import 'package:food_delivery_app_ui/presentation/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.onBoarding,
          builder: (BuildContext context, GoRouterState state) {
            return OnBoardingPage();
          },
        ),
        GoRoute(
          path: Routes.homePage,
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
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
      ],
    ),
  ],
);