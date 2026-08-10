import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'routes/routes.dart';
import 'package:food_delivery_app_ui/presentation/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.splash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
      routes: <RouteBase>[
        ...homeRoutes,
        ...splashRoutes,
        ...authRoutes,
        ...searchRoutes,
        ...foodDetailRoutes,
        ...restaurantRoutes,
      ],
    ),
  ],
);