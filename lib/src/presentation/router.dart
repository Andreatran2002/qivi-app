// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/presentation/screens/all_product/sc_all_product.dart';
import 'package:qivi_app/src/presentation/screens/home/sc_home.dart';
import 'package:qivi_app/src/presentation/screens/login/sc_login.dart';
import 'package:qivi_app/src/presentation/screens/no_network/sc_no_network.dart';
import 'package:qivi_app/src/presentation/screens/order/sc_order.dart';
import 'package:qivi_app/src/presentation/screens/product_info/sc_product_info.dart';
import 'package:qivi_app/src/presentation/screens/seasrch_product/sc_search_product.dart';
import 'package:qivi_app/src/presentation/screens/shopping_session/sc_shopping_session.dart';
import 'package:qivi_app/src/presentation/screens/splash/sc_splash.dart';

import 'screens/register/sc_register.dart';

class AppRouter {
  static const String HOME = '/';
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';
  static const String NONETWORK = '/no_network';
  static const String ALL_PRODUCTS = '/all_products';
  static const String PRODUCT_INFO = '/product_info';
  static const String SEARCH_PRODUCTS = '/search_products';
  static const String SHOPPING_SESSION = '/shopping_session';
  static const String ORDER = '/order';
  static const String LIST_ALL_CINE = '/list_all_cine';
  static const String REGISTER = '/register';
  static const String LIST_MY_TICKET = '/list_my_ticket';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case REGISTER:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case NONETWORK:
        return MaterialPageRoute(builder: (_) => const NoNetworkScreen());
      case ALL_PRODUCTS:
        {
          int current = settings.arguments as int;
          return MaterialPageRoute(builder: (_) => AllProductScreen(current));
        }
      case PRODUCT_INFO:
        {
          Product product = settings.arguments as Product;
          return MaterialPageRoute(builder: (_) => ProductInfoScreen(product));
        }
      case SHOPPING_SESSION:
        {
          return MaterialPageRoute(
            builder: (_) => ShoppingSessionScreen(),
          );
        }
      case ORDER:
        return MaterialPageRoute(builder: (_) => OrderScreen());
      // case SEARCH_PRODUCTS:
      //   {
      //     return MaterialPageRoute(builder: (_) => SearchProductScreen());
      //   }

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
