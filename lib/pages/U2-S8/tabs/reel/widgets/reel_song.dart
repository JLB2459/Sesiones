import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/similar_reel_tab.dart';

class ReelSong extends StatelessWidget {
  const ReelSong({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final InstagramWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://icons8.com/vue-static/landings/animated-icons/icons/sound/sound_200.gif',
          color: Colors.white.withOpacity(0.25),
          colorBlendMode: BlendMode.modulate,
          height: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          //'data',
          '${widget.songName}',
        ),
      ],
    );
  }
}
