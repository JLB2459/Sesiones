import 'package:flutter/material.dart';
import 'package:practice_app/utils/font_styles.dart';

class ListTileWithChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String info;
  final Color color;
  final bool isSocial;
  const ListTileWithChip({
    Key? key,
    required this.icon,
    required this.label,
    required this.info,
    required this.color,
    this.isSocial = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        // Icons.discount,
        icon,
        color: Colors.grey,
      ),
      title: Text(
        //'Promotions',
        label,
        style: FontStyles.label,
      ),
      trailing: Chip(
        backgroundColor: color,
        label: Text(
          //'99+',
          info,
          style: isSocial ? FontStyles.blueChip : FontStyles.greenChip,
        ),
      ),
    );
  }
}
