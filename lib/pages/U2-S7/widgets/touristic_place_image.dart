import 'package:flutter/material.dart';

class TouristicPlaceImage extends StatelessWidget {
  const TouristicPlaceImage({
    Key? key,
    required this.isPortrait,
    required this.imagePath,
  }) : super(key: key);

  final bool isPortrait;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: isPortrait ? 0.9 : 4,
      child: Image.network(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
