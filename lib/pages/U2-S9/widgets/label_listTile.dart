import 'package:flutter/material.dart';
import 'package:practice_app/utils/font_styles.dart';

class LabelListile extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool withInformation;
  final String? info;

  const LabelListile({
    Key? key,
    required this.label,
    required this.icon,
    this.withInformation = false,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        label,
        style: FontStyles.label,
      ),
      trailing: withInformation
          ? Text(
              '$info',
              style: FontStyles.label,
            )
          : null,
    );
  }
}
