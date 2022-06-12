import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 20.0,
              ),
              child: TopTitle(text: 'CONTACT'),
            ),
            ContactFirstScreen()
          ],
        ));
  }
}
