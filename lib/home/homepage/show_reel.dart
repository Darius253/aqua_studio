import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ShowReel extends StatefulWidget {
  const ShowReel({Key? key}) : super(key: key);

  @override
  State<ShowReel> createState() => _ShowReelState();
}

class _ShowReelState extends State<ShowReel> {
  @override
  Widget build(BuildContext context) {
    return const ReponsiveWidget(
      largeScreen: ShowReelWeb(),
      mediumScreen: ShowReelWeb(),
      smallScreen: ShowReelMobile(),
    );
  }
}
