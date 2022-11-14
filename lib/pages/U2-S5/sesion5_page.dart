import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S5/widgets/my_avatar.dart';
import 'package:practice_app/pages/U2-S5/widgets/normal_text.dart';
import 'package:practice_app/pages/U2-S5/widgets/title_text.dart';

class Sesion5Page extends StatelessWidget {
  const Sesion5Page({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final double height =
        media.size.height - media.padding.top - media.padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sesión 5',
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: height,
                  color: Colors.black38,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TitleText(
                        color: Colors.white,
                        title: 'Edad:',
                      ),
                      NormalText(
                        text: '24 años',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Container(
                  height: height,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MyAvatar(
                        asset: 'assets/profile.jpeg',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TitleText(
                        title: 'Nombres',
                      ),
                      NormalText(
                        text: 'Jimmy Henrry',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TitleText(
                        title: 'Apellidos',
                      ),
                      NormalText(
                        text: 'Lozano Barbeito',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
