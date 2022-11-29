import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S11/S11_home_page.dart';
import 'package:practice_app/pages/U2-S11/login_page.dart';
import 'package:practice_app/pages/home_page.dart';

class MyRoutes {
  static const String homeS11 = '/homeS11';
  static const String home = '/home';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/homeS11'):
        return MaterialPageRoute(
          builder: (_) => const S11HomePage(),
        );

      case ('/login'):
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case ('/home'):
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
