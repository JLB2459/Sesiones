import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final double size;
  final String asset;
  const MyAvatar({
    Key? key,
    this.size = 80,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        border: Border.all(
          color: Colors.white,
          width: 2.5,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            // 'assets/profile.jpeg',
            asset,
          ),
        ),
      ),
    );
  }

  final List<BoxShadow> boxShadow = const [
    BoxShadow(
      blurRadius: 10,
      color: Colors.black54,
      offset: Offset(
        2,
        4,
      ),
    ),
  ];
}
