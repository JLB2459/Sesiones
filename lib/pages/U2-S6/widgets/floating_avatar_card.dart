import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/U2-S5/widgets/my_avatar.dart';
import 'package:practice_app/pages/U2-S6/widgets/user_information.dart';

class AvatarFloatingCard extends StatelessWidget {
  const AvatarFloatingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 70,
                horizontal: 10,
              ).copyWith(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    child: Text(
                      'Mobile Developer',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mulish(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const UserInformation(
                    title: 'Nombres: ',
                    information: 'Jimmy Henrry',
                  ),
                  const UserInformation(
                    title: 'Apellidos: ',
                    information: 'Lozano Barbeito',
                  ),
                  const UserInformation(
                    title: 'Edad: ',
                    information: '24 años',
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: -50,
            child: MyAvatar(
              size: 100,
              asset: 'assets/profile.jpeg',
            ),
          ),
        ],
      ),
    );
  }
}
