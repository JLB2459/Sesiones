import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S11/S11_home_page.dart';
import 'package:practice_app/pages/U2-S11/login_page.dart';
import 'package:practice_app/pages/U2-S13/login_page.dart';
import 'package:practice_app/pages/U2-S13/register_page.dart';
import 'package:practice_app/pages/home_page.dart';

class MyRoutes {
  static const String homeS11 = '/homeS11';
  static const String home = '/home';
  static const String login = '/login';
  static const String login2 = '/login2';
  static const String register = '/register';

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
      case ('/login2'):
        return MaterialPageRoute(
          builder: (_) => const LoginPageS13(),
        );
      case ('/register'):
        return MaterialPageRoute(
          builder: (_) => const RegisterPageS13(),
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
