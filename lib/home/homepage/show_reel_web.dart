import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ShowReelWeb extends StatefulWidget {
  const ShowReelWeb({Key? key}) : super(key: key);

  @override
  State<ShowReelWeb> createState() => _ShowReelWebState();
}

class _ShowReelWebState extends State<ShowReelWeb> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('show reel'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.2) {
          viewController.currentView.value = Views.reel;
          viewController.currentViewIndex.value = 0;
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
          left: 80.0,
          right: 80.0,
        ),
        child: Image.asset(
          Images.reel,
          fit: BoxFit.cover,
          width: double.infinity,
          height: Get.height * 0.7,
        ),
      ),
    );
  }
}
