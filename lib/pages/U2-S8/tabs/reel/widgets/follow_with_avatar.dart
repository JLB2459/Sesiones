import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/similar_reel_tab.dart';

import 'follow_button.dart';

class FollowWithAvatar extends StatelessWidget {
  const FollowWithAvatar({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final InstagramWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 17,
          backgroundImage: NetworkImage(
            //'https://images.unsplash.com/photo-1668613966219-d59446ea2dc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
            '${widget.avatarUrl}',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '${widget.username}',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FollowButton(
          onPressed: () {
            print('follow');
          },
        ),
      ],
    );
  }
}
