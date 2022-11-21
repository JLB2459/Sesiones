import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S5/widgets/my_avatar.dart';
import 'package:practice_app/pages/U2-S9/widgets/profile_header.dart';
import 'package:practice_app/pages/U2-S9/widgets/profile_information.dart';
import 'package:practice_app/utils/font_styles.dart';

class ProfileHighLights extends StatelessWidget {
  const ProfileHighLights({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0XFF1050FA),
            ),
            height: size.height * 0.4,
            width: double.infinity,
          ),
          Positioned(
            right: -size.width * 0.65,
            bottom: -size.width * 0.13,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF1B63F2),
              ),
              height: size.width * 1.5,
              width: size.width * 1.5,
            ),
          ),
          Positioned(
            right: -size.width * 1.15,
            bottom: -size.width * 0.1,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF346BFC),
              ),
              height: size.width * 1.55,
              width: size.width * 1.55,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const MyAvatar(
                  size: 80,
                  asset: 'assets/profile.jpeg',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Jimmy Lozano',
                  style: FontStyles.title,
                ),
                Text(
                  'Mobile Developer',
                  style: FontStyles.subtitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ProfileInformation(),
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: ProfileHeader(),
          ),
        ],
      ),
    );
  }
}
