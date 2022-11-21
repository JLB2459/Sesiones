import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S9/widgets/profile_information_item.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const ProfileInformationItem(
          label: 'Followers',
          informationDetail: '1000',
        ),
        Container(
          width: 2.5,
          height: 40,
          color: Colors.white,
        ),
        const ProfileInformationItem(
          label: 'Followings',
          informationDetail: '1300',
        ),
      ],
    );
  }
}
