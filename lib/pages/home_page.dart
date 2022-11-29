import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S11/login_page.dart';
import 'package:practice_app/pages/U2-S5/sesion5_page.dart';
import 'package:practice_app/pages/U2-S6/sesion6_page.dart';
import 'package:practice_app/pages/U2-S7/sesion7_page.dart';
import 'package:practice_app/pages/U2-S8/sesion8_page.dart';
import 'package:practice_app/pages/U2-S9/widgets/sesion9_page.dart';
import 'package:practice_app/pages/widgets/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
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
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Trabajo Sesión 6',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const Sesion6Page(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Trabajo Sesión 7',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const Sesion7Page(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Trabajo Sesión 8',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const Sesion8Page(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Trabajo Sesión 9',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const S9HomePage(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Trabajo Sesión 11',
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (BuildContext context) => const LoginPage(),
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
