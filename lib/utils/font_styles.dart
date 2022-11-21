import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FontStyles {
  static final TextTheme textTheme = GoogleFonts.openSansTextTheme();

  static final title = GoogleFonts.openSans(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );
  static final subtitle = GoogleFonts.openSans(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );
  static final grayTitle = GoogleFonts.openSans(
    fontSize: 16.0,
    color: const Color(0XFF939495),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static final graySubtitle = GoogleFonts.openSans(
    fontSize: 16.0,
    color: const Color(0XFF53575F),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static final labelTitle = GoogleFonts.openSans(
    fontSize: 18.0,
    color: const Color(0XFF3F3E3E),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static final label = GoogleFonts.openSans(
    fontSize: 16.0,
    color: const Color(0XFF53575F),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static final blueChip = GoogleFonts.openSans(
    fontSize: 14.0,
    color: const Color(0XFF2C56D2),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static final greenChip = GoogleFonts.openSans(
    fontSize: 14.0,
    color: const Color(0XFF449474),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
}
