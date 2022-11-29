import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S13/S13_home_page.dart';
import 'package:practice_app/pages/U2-S13/login_page.dart';
import 'package:practice_app/services/service_auth.dart';
import 'package:provider/provider.dart';

class VerifyAuthPage extends StatelessWidget {
  const VerifyAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.readToken(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text(
                'procesando...',
                style: TextStyle(
                  fontSize: 18,
                ),
              );
            }
            if (snapshot.data == '') {
              Future.microtask(
                () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const LoginPageS13(),
                      transitionDuration: const Duration(seconds: 0),
                    ),
                  );
                },
              );
              return const SizedBox();
            } else {
              Future.microtask(() {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const S13HomePage(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              });
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
