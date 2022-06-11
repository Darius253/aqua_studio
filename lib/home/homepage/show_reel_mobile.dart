import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ShowReelMobile extends StatefulWidget {
  const ShowReelMobile({Key? key}) : super(key: key);

  @override
  State<ShowReelMobile> createState() => _ShowReelMobileState();
}

class _ShowReelMobileState extends State<ShowReelMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitle(
              text: 'SHOWREEL',
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 450,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
