import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/auth/locationAccess/location_access_page.dart';
import 'package:food_delivery_app_ui/presentation/on_boarding/on_boarding_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> splashRoutes = [
  GoRoute(
    path: Routes.onBoarding,
    builder: (BuildContext context, GoRouterState state) {
      return OnBoardingPage();
    },
  ),

  GoRoute(
          path: Routes.accessLocationPage,
          builder: (BuildContext context, GoRouterState state) {
            return LocationAccessPage();
          },
        ),
];
