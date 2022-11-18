import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({
    super.key,
    required this.isFavourite,
  });
  bool isFavourite;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        widget.isFavourite ? Icons.favorite : Icons.favorite_border_outlined,
        size: 32,
        color: widget.isFavourite ? Colors.red : Colors.white,
      ),
      onTap: () {
        print('favorite pressed');
        setState(() {
          widget.isFavourite = !widget.isFavourite;
        });
      },
    );
  }
}
