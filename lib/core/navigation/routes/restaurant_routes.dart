import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/restaurant/restaurant_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> restaurantRoutes = [
  GoRoute(
          path: Routes.restaurantPage,
          builder: (BuildContext context, GoRouterState state) {
            return RestaurantPage();
          },
        ),
];