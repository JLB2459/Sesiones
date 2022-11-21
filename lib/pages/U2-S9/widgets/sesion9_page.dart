import 'package:flutter/material.dart';
import 'package:practice_app/models/user_information.dart';
import 'package:practice_app/pages/U2-S9/widgets/my_drawer.dart';
import 'package:practice_app/pages/U2-S9/widgets/profile_highlights.dart';
import 'package:practice_app/pages/U2-S9/widgets/user_information_listTile.dart';

class S9HomePage extends StatelessWidget {
  const S9HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final userInformation = <UserInformation>[
      UserInformation(
        icon: Icons.email,
        label: 'Email',
        information: 'jlozano2459@gmail.com',
      ),
      UserInformation(
        icon: Icons.mobile_friendly,
        label: 'Mobile',
        information: '962230583',
      ),
      UserInformation(
        icon: Icons.facebook,
        label: 'Facebook',
        information: 'Jimmy Lozano',
      ),
      UserInformation(
        icon: Icons.camera,
        label: 'Instagram',
        information: 'JimmyLozano24',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(size: size),
      body: SafeArea(
        child: Column(
          children: [
            ProfileHighLights(size: size),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final userInfo = userInformation[index];
                    return UserInformationListTile(
                      userInformation: userInfo,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                    );
                  },
                  itemCount: userInformation.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
