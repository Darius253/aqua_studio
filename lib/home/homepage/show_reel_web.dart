import 'package:flutter/material.dart';

class ShowReelWeb extends StatefulWidget {
  const ShowReelWeb({Key? key}) : super(key: key);

  @override
  State<ShowReelWeb> createState() => _ShowReelWebState();
}

class _ShowReelWebState extends State<ShowReelWeb> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
