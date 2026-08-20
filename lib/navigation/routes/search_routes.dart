import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/navigation/routes.dart';
import 'package:food_delivery_app_ui/presentation/search/search_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> searchRoutes = [
  GoRoute(
          path: Routes.searchPage,
          builder: (BuildContext context, GoRouterState state) {
            return SearchPage();
          },
        ),
];