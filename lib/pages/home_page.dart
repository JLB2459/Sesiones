import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S5/sesion5_page.dart';
import 'package:practice_app/pages/widgets/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabajos'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Column(
              children: [
                MyButton(
                  text: 'Trabajo Sesión 5',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const Sesion5Page(),
                    );
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
