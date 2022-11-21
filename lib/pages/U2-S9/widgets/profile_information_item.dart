import 'package:flutter/material.dart';
import 'package:practice_app/utils/font_styles.dart';

class ProfileInformationItem extends StatelessWidget {
  final String label;
  final String informationDetail;
  const ProfileInformationItem({
    Key? key,
    required this.label,
    required this.informationDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          informationDetail,
          style: FontStyles.title,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: FontStyles.subtitle,
        ),
      ],
    );
  }
}
