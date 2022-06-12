import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ShowReelMobile extends StatefulWidget {
  const ShowReelMobile({Key? key}) : super(key: key);

  @override
  State<ShowReelMobile> createState() => _ShowReelMobileState();
}

class _ShowReelMobileState extends State<ShowReelMobile> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 40.0,
            left: 30,
            bottom: 20,
          ),
          child: TopTitle(text: 'SHOWREEL'),
        ),
        VisibilityDetector(
          key: const Key('show reel'),
          onVisibilityChanged: (visibilityInfo) {
            if (visibilityInfo.visibleFraction > 0.2) {
              viewController.currentView.value = Views.reel;
              viewController.currentViewIndex.value = 0;
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 30.0,
              right: 20.0,
            ),
            child: Image.asset(
              Images.reel,
              fit: BoxFit.cover,
              width: double.infinity,
              height: Get.height * 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
