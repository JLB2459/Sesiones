import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final String asset;
  const MyAvatar({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
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
