import 'package:ecommerce_admin_panel/features/app_feature/error_page/error_page.dart';
import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/dashboard_page.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/add_categories_screens/add_categories_page.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/add_products_screens/add_products_page.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/categories_screens/categories_page.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/products_screens/products_page.dart';
import 'package:ecommerce_admin_panel/trial.dart';
import 'package:flutter/material.dart';

import '../features/app_feature/const/routes.dart';

class OnGenerateRoutes {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;
    final name = settings.name;
    switch (name) {
      // case AppRoute.welcomePage:
      //   {
      //     return materialPageBuilder(const WelcomePage());
      //   }
      case AppRoute.dashboard:
        {
          if (args is int) {
            return materialPageBuilder(DashboardPage(
              currentIndex: args,
            ));
          } else {
            return materialPageBuilder(const ErrorPage());
          }
        }
      case AppRoute.products:
        {
          if (args is int) {
            return materialPageBuilder(ProductsPage(
              currentIndex: args,
            ));
          } else {
            return materialPageBuilder(const ErrorPage());
          }
        }
      case AppRoute.categories:
        {
          if (args is int) {
            return materialPageBuilder(CategoriesPage(
              currentIndex: args,
            ));
          } else {
            return materialPageBuilder(const ErrorPage());
          }
        }

      case AppRoute.inbox:
        {
          return materialPageBuilder(const TrialPage());
        }
      case AppRoute.addProducts:
        {
          return materialPageBuilder(const AddProductsPage());
        }
      case AppRoute.addCategories:
        {
          return materialPageBuilder(const AddCategoriesPage());
        }
    }
    return materialPageBuilder(const ErrorPage());
  }
}

dynamic materialPageBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
