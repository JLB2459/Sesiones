import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayTourButton extends StatelessWidget {
  const PayTourButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      onPressed: () {},
      color: const Color(0XFFF98247),
      child: Text(
        'Comprar Tour',
        style: GoogleFonts.mulish(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
