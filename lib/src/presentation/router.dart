// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/presentation/screens/all_product/sc_all_product.dart';
import 'package:qivi_app/src/presentation/screens/create_order_info/sc_create_order_info.dart';
import 'package:qivi_app/src/presentation/screens/edit_address/sc_edit_address.dart';
import 'package:qivi_app/src/presentation/screens/home/sc_home.dart';
import 'package:qivi_app/src/presentation/screens/login/sc_login.dart';
import 'package:qivi_app/src/presentation/screens/no_network/sc_no_network.dart';
import 'package:qivi_app/src/presentation/screens/order/sc_order.dart';
import 'package:qivi_app/src/presentation/screens/product_info/sc_product_info.dart';
import 'package:qivi_app/src/presentation/screens/seasrch_product/sc_search_product.dart';
import 'package:qivi_app/src/presentation/screens/shopping_session/sc_shopping_session.dart';
import 'package:qivi_app/src/presentation/screens/splash/sc_splash.dart';
import 'package:showcaseview/showcaseview.dart';

import 'screens/register/sc_register.dart';

class AppRouter {
  static const String HOME = '/';
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';
  static const String NONETWORK = '/no_network';
  static const String ALL_PRODUCTS = '/products';
  static const String PRODUCT_INFO = '/products/details';
  static const String SEARCH_PRODUCTS = '/products/search';
  static const String SHOPPING_SESSION = '/shopping_session';
  static const String ORDER = '/order';
  static const String REGISTER = '/register';
  static const String EDIT_ADDRESS = '/customer/address/edit';
  static const String CREATE_ADDRESS = '/customer/address/create';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return pushRoute(HomeScreen());
      case SPLASH:
        return pushRoute(SplashScreen());
      case LOGIN:
        return pushRoute(LoginScreen());
      case REGISTER:
        return pushRoute(RegisterScreen());
      case NONETWORK:
        return pushRoute(NoNetworkScreen());
      case ALL_PRODUCTS:
        {
          int current = settings.arguments as int;
          return pushRoute(AllProductScreen(current));
        }
      case PRODUCT_INFO:
        {
          Product product = settings.arguments as Product;
          return pushRoute(ProductInfoScreen(product));
        }
      case SHOPPING_SESSION:
        {
          return pushRoute(
            ShoppingSessionScreen(),
          );
        }
      case ORDER:
        {
          int amount = settings.arguments as int;
          return pushRoute(OrderScreen(amount));
        }

      case EDIT_ADDRESS:
        {
          return pushRoute(ShowCaseWidget(
            autoPlay: true,
            onFinish: () {
              print("Finisth");
            },
            autoPlayDelay: Duration(seconds: 3),
            builder: Builder(builder: (context) {
              return EditAddressScreen();
            }),
          ));
        }

      case CREATE_ADDRESS:
        return pushRoute(CreateOrderInfoScreen());

      default:
        return pushRoute(Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }

  static PageRouteBuilder<dynamic> pushRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return page;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1, 0);
        const end = Offset(0, 0);
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(milliseconds: 200),
    );
  }
}
