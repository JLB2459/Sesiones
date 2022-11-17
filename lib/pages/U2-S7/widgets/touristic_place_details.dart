import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TouristicPlaceDetails extends StatelessWidget {
  const TouristicPlaceDetails({
    Key? key,
    required this.title,
    required this.isPortrait,
    required this.content,
  }) : super(key: key);

  final String title;
  final bool isPortrait;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          // 'data science',
          title,
          style: GoogleFonts.mulish(
            fontSize: isPortrait ? 24 : 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 6,
          ),
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: Text(
            // '',
            content,
            maxLines: isPortrait ? 5 : 3,
            style: GoogleFonts.mulish(
              color: const Color.fromARGB(255, 66, 66, 66),
              fontSize: isPortrait ? 15 : 14,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
