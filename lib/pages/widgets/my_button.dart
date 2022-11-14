import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  const MyButton({super.key, this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: Colors.blueGrey.shade400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Text(
        text ?? 'Trabajo Sesión "N"',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
