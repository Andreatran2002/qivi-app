// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:qivi_bill/src/presentation/screens/home/sc_home.dart';
import 'package:qivi_bill/src/presentation/screens/login/sc_login.dart';
import 'package:qivi_bill/src/presentation/screens/splash/sc_splash.dart';

import 'screens/register/sc_register.dart';

class AppRouter {
  static const String HOME = '/';
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';
  static const String ALL_SHOWS = '/all_shows';
  static const String SHOW_INFO = '/show_info';
  static const String BOOK_TIME_SLOT = '/book_time_slot';
  static const String BOOK_SEAT_TYPE = '/book_seat_type';
  static const String BOOK_SEAT_SLOT = '/book_seat_slot';
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
