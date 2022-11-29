import 'package:flutter/material.dart';
import 'package:practice_app/routes/routes.dart';
import 'package:practice_app/services/service_auth.dart';
import 'package:provider/provider.dart';

class S13HomePage extends StatelessWidget {
  const S13HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              authService.logout();
              Navigator.pushReplacementNamed(
                context,
                MyRoutes.login2,
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.green,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Bienvenido'),
      ),
    );
  }
}
