import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/food_detail/food_detail_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> foodDetailRoutes = [
  GoRoute(
          path: Routes.foodDetailPage,
          builder: (BuildContext context, GoRouterState state) {
            return FoodDetailPage();
          },
        ),
];