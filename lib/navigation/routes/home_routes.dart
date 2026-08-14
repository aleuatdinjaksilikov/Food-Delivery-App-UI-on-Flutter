import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/home/home_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> homeRoutes = [
  GoRoute(
          path: Routes.homePage,
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
];