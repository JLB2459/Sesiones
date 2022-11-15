import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/U2-S6/widgets/floating_avatar_card.dart';
import 'package:practice_app/pages/U2-S6/widgets/my_custom_button.dart';

class Sesion6Page extends StatefulWidget {
  const Sesion6Page({super.key});

  @override
  State<Sesion6Page> createState() => _Sesion6PageState();
}

class _Sesion6PageState extends State<Sesion6Page> {
  int numero = 0;

  void incrementNumber() {
    setState(() {
      numero++;
    });
  }

  void decreaseNumber() {
    setState(() {
      numero--;
    });
  }

  void resetNumber() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    const gradient = LinearGradient(
      colors: [
        Colors.blueGrey,
        Color.fromARGB(255, 85, 150, 204),
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 150, 204),
        title: Text(
          'Mi Perfil',
          style: GoogleFonts.gelasio(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: height,
          decoration: const BoxDecoration(gradient: gradient),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AvatarFloatingCard(),
                Text(
                  'Contador:',
                  style: GoogleFonts.mulish(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$numero',
                  style: GoogleFonts.mulish(
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MyCustomButton(
                  decrease: () => decreaseNumber(),
                  reset: () => resetNumber(),
                  increment: () => incrementNumber(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
