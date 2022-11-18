import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/widgets/favourite_button.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/widgets/follow_with_avatar.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/widgets/reel_header.dart';
import 'package:practice_app/pages/U2-S8/tabs/reel/widgets/reel_song.dart';

class ReelTab extends StatelessWidget {
  const ReelTab({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://media0.giphy.com/media/hQlEdRSZz4l9e/giphy.gif?cid=ecf05e47dukfzpoh6o4p3p549qkgyumlkf93ymhc12489qow&rid=giphy.gif&ct=g',
        'username': 'Sofia29',
        'post': 'Disfrutando del atardecer en algún lugar..',
        'music_name': 'Peace on the beach',
        'likes': 123,
        'comments': 25,
        'user_avatar':
            'https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
        'music_cover':
            'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      },
      {
        'img':
            'https://media4.giphy.com/media/u1ntxwWK5fNf2/giphy.gif?cid=ecf05e47mkqp2wli0d80du6e877cv1a4btus4r7y5puzes9l&rid=giphy.gif&ct=g',
        'username': 'Viajero247',
        'post': 'Escape de la rutina de trabajo',
        'music_name': 'Come with me',
        'likes': 450,
        'comments': 70,
        'user_avatar':
            'https://images.unsplash.com/photo-1574410206732-0000dbcb116d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
        'music_cover':
            'https://images.unsplash.com/photo-1487180144351-b8472da7d491?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
      },
      {
        'img':
            'https://media4.giphy.com/media/STeqFzHF7vQhOB2XlS/giphy.gif?cid=ecf05e47ilar8q1gbzkob0p4gjyt6mg1ysyh62wpw0ihc4t6&rid=giphy.gif&ct=g',
        'username': 'Roger192',
        'post': 'Campeones del torneo!!',
        'music_name': 'We are the champions',
        'likes': 183,
        'comments': 56,
        'user_avatar':
            'https://images.unsplash.com/photo-1566577739112-5180d4bf9390?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80',
        'music_cover':
            'https://images.unsplash.com/photo-1619983081563-430f63602796?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      },
      {
        'img':
            'https://media2.giphy.com/media/Z68RkOGveKaXGSgu3S/giphy.gif?cid=ecf05e47ognfq0yjss17jhvofaqfctn3ccb77rckbzwdx0wr&rid=giphy.gif&ct=g',
        'username': 'AmateurPilot24',
        'post': 'Practicando a full para el gran día',
        'music_name': 'Tokio Drift',
        'likes': 587,
        'comments': 300,
        'user_avatar':
            'https://images.unsplash.com/photo-1552255440-ac1fa0a5b2a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        'music_cover':
            'https://images.unsplash.com/photo-1498036882173-b41c28a8ba34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      },
      {
        'img':
            'https://media1.giphy.com/media/FkZX7b90QwIL2Akmk6/giphy.gif?cid=ecf05e4758b8oq88q4dehryp9ux7814driv8a43lhtev4js9&rid=giphy.gif&ct=g',
        'username': 'Juan_15.96',
        'post': 'Una buena carne para acompañar la tarde ',
        'music_name': 'Comiendo - SergioAlmora.pe',
        'likes': 123,
        'comments': 58,
        'user_avatar':
            'https://plus.unsplash.com/premium_photo-1658506988095-885269f2b56e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'music_cover':
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (_, index) {
                final post = data[index];
                return InstagramWidget(
                  image: post['img'],
                  username: post['username'],
                  post: post['post'],
                  avatarUrl: post['user_avatar'],
                  songName: post['music_name'],
                  cover: post['music_cover'],
                  likes: post['likes'],
                  comment: post['comments'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramWidget extends StatefulWidget {
  final String? username;
  final String? image;
  final String? post;
  final String? avatarUrl;
  final String? cover;
  final String? songName;
  final int? likes;
  final int? comment;

  const InstagramWidget({
    Key? key,
    this.username,
    this.image,
    this.post,
    this.avatarUrl,
    this.cover,
    this.songName,
    this.likes,
    this.comment,
  }) : super(key: key);

  @override
  State<InstagramWidget> createState() => _InstagramWidgetState();
}

class _InstagramWidgetState extends State<InstagramWidget> {
  bool _isFavourite = false;
  int onTap(bool isFavourite, int likes) {
    if (isFavourite) {
      likes = likes + 1;

      return likes;
    } else {
      likes = likes;

      return likes;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: InstaLikeButton(
            imageBoxfit: BoxFit.cover,
            image: NetworkImage(
              '${widget.image}',
            ),
            onChanged: () {
              setState(() {
                _isFavourite = !_isFavourite;
              });
            },
          ),
        ),
        const ReelHeader(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FollowWithAvatar(
                      widget: widget,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      //'Mi primer Reel ,prueba 1',
                      '${widget.post}',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ReelSong(widget: widget),
                  ],
                ),
              ),
              _buildLateralMenu(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLateralMenu() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        right: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              FavoriteButton(
                isFavourite: _isFavourite,
              ),
              GestureDetector(
                child: Text(
                  // '24',

                  onTap(_isFavourite, widget.likes!).toString(),

                  style: GoogleFonts.robotoMono(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                onTap: () {
                  print('watch who tap to favorite');
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('write a comment');
            },
            child: Column(
              children: [
                const Icon(
                  CupertinoIcons.bubble_right,
                  size: 32,
                ),
                Text(
                  //'24',
                  '${widget.comment}',
                  style: GoogleFonts.robotoMono(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('share post');
            },
            child: const Icon(
              Icons.send_outlined,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('more actions');
            },
            child: const Icon(
              Icons.more_horiz_outlined,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('AudioImage');
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    //'https://images.unsplash.com/photo-1668613966219-d59446ea2dc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                    '${widget.cover}',
                  ),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              height: 32,
              width: 32,
            ),
          ),
        ],
      ),
    );
  }
}
