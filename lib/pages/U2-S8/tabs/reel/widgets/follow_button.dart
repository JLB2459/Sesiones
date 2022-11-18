import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback onPressed;
  const FollowButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.3,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Text(
          'Seguir',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
