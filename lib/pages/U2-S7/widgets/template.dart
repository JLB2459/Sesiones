import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S7/widgets/pay_tour_button.dart';
import 'package:practice_app/pages/U2-S7/widgets/touristic_place_details.dart';
import 'package:practice_app/pages/U2-S7/widgets/touristic_place_image.dart';

class Template extends StatelessWidget {
  final String title;
  final String content;
  final String imagePath;
  const Template(
      {super.key,
      required this.title,
      required this.content,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        final bool isPortrait = orientation == Orientation.portrait;

        return SafeArea(
          child: Container(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                TouristicPlaceImage(
                  isPortrait: isPortrait,
                  imagePath: imagePath,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: const Color(0XFFFBFFFF),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TouristicPlaceDetails(
                            title: title,
                            isPortrait: isPortrait,
                            content: content,
                          ),
                          const PayTourButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
