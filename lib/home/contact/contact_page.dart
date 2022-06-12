import 'package:aqua_studio/home/contact/contact_mobile.dart';
import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const ReponsiveWidget(
      mediumScreen: Contact(),
      largeScreen: Contact(),
      smallScreen: ContactMobile(),
    );
  }
}
