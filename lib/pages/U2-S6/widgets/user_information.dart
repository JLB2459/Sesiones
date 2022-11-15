import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInformation extends StatelessWidget {
  final String title;
  final String information;
  const UserInformation({
    Key? key,
    required this.title,
    required this.information,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: //'Nombres: ',
            title,
        style: GoogleFonts.mulish(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: //'Jimmy Henrry',
                information,
            style: GoogleFonts.mulish(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
