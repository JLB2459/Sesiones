import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S5/widgets/my_avatar.dart';
import 'package:practice_app/pages/U2-S9/widgets/label_listTile.dart';
import 'package:practice_app/pages/U2-S9/widgets/listtile_with_chip.dart';
import 'package:practice_app/utils/font_styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFF1050FA),
                    ),
                    height: size.height * 0.2,
                    width: double.infinity,
                  ),
                  Positioned(
                    right: -size.width * 0.325,
                    bottom: -size.width * 0.065,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF1B63F2),
                      ),
                      height: size.width * 0.85,
                      width: size.width * 0.85,
                    ),
                  ),
                  Positioned(
                    right: -size.width * 0.575,
                    bottom: -size.width * 0.05,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF346BFC),
                      ),
                      height: size.width * 0.778,
                      width: size.width * 0.778,
                    ),
                  ),
                  Positioned(
                      right: 0,
                      left: 0,
                      top: size.height * 0.1 - 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const MyAvatar(
                            size: 70,
                            asset: 'assets/profile.jpeg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jimmy Lozano',
                                style: FontStyles.title,
                              ),
                              Text(
                                'Mobile Developer',
                                style: FontStyles.subtitle,
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ).copyWith(
                  bottom: 0,
                ),
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    const LabelListile(
                      icon: Icons.inbox,
                      label: 'All inboxes',
                      withInformation: true,
                      info: '15',
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const LabelListile(
                      icon: Icons.email,
                      label: 'Primary',
                      withInformation: true,
                      info: '15',
                    ),
                    const ListTileWithChip(
                      color: Color(0XFF9AB4EE),
                      icon: Icons.people,
                      label: 'Social',
                      info: '99+ new',
                      isSocial: true,
                    ),
                    const ListTileWithChip(
                      color: Color(0XFF74E1BC),
                      icon: Icons.discount,
                      label: 'Promotions',
                      info: '99+ new',
                    ),
                    //local_post_office
                    const Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        'All Labels',
                        style: FontStyles.labelTitle,
                      ),
                    ),
                    const LabelListile(
                      icon: Icons.star,
                      label: 'Starred',
                    ),
                    const LabelListile(
                      icon: Icons.label_important,
                      label: 'Important',
                    ),
                    const LabelListile(
                      icon: Icons.send,
                      label: 'Sent',
                    ),
                    const LabelListile(
                      icon: Icons.outbox,
                      label: 'Outbox',
                    ),
                    const LabelListile(
                      icon: Icons.insert_drive_file,
                      label: 'Drafts',
                    ),
                    const LabelListile(
                      icon: Icons.all_inbox,
                      label: 'All emails',
                      withInformation: true,
                      info: '99+',
                    ),
                    const LabelListile(
                      icon: Icons.error,
                      label: 'Spam',
                      withInformation: true,
                      info: '99+',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
