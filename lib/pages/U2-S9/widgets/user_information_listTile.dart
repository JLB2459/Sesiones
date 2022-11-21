import 'package:flutter/material.dart';
import 'package:practice_app/models/user_information.dart';
import 'package:practice_app/utils/font_styles.dart';

class UserInformationListTile extends StatelessWidget {
  final UserInformation userInformation;
  const UserInformationListTile({
    Key? key,
    required this.userInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        userInformation.icon,
        color: Colors.grey,
      ),
      title: Text(
        // 'Email',
        userInformation.label,
        style: FontStyles.grayTitle,
      ),
      subtitle: Text(
        //'jlozano2459@gmail.com',
        userInformation.information,
        style: FontStyles.graySubtitle,
      ),
    );
  }
}
