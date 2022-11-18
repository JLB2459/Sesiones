import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReelHeader extends StatelessWidget {
  const ReelHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Reels',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('camera pressed');
            },
            child: const Icon(
              Icons.camera_alt_outlined,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
