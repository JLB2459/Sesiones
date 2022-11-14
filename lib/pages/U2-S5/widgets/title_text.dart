import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  const TitleText({
    Key? key,
    required this.title,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // 'Nombres:',
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
