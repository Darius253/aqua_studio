import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class OurHousePage extends StatefulWidget {
  const OurHousePage({Key? key}) : super(key: key);

  @override
  State<OurHousePage> createState() => _OurHousePageState();
}

class _OurHousePageState extends State<OurHousePage> {
  @override
  Widget build(BuildContext context) {
    return const ReponsiveWidget(
      largeScreen: OurHouse(),
      mediumScreen: OurHouse(),
      smallScreen: OurHouseMobile(),
    );
  }
}
