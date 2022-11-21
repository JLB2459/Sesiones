import 'package:flutter/material.dart';

import 'package:practice_app/utils/font_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          color: Colors.white,
          splashRadius: 16,
          onPressed: () {
            debugPrint('back pressed');
            Navigator.maybePop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        Text(
          'Profile',
          style: FontStyles.title,
        ),
        IconButton(
          color: Colors.white,
          splashRadius: 16,
          onPressed: () {
            debugPrint('setting pressed');
          },
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
