import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color color;
  const NormalText({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      //'Jimmy Henrry',
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );
  }
}
