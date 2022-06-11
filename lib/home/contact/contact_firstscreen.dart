import 'package:flutter/material.dart';
import 'package:aqua_studio/shared/exports.dart';

class ContactFirstScreen extends StatefulWidget {
  const ContactFirstScreen({Key? key}) : super(key: key);

  @override
  State<ContactFirstScreen> createState() => _ContactFirstScreenState();
}

class _ContactFirstScreenState extends State<ContactFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'REQUEST SERVICE',
          style: TextStyle(
            fontFamily: 'Cocomat Ultra',
            fontSize: 25,
            color: Color.fromARGB(255, 230, 226, 226),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              MobileTextBox(
                  color: Color.fromARGB(255, 172, 168, 168),
                  hintText: 'TYPE YOUR MESSAGE HERE'),
              SizedBox(height: 20),
              MobileTextBox(
                  color: Color.fromARGB(255, 172, 168, 168),
                  hintText: 'FULL NAME | ORGANISATION NAME'),
              SizedBox(height: 20),
              MobileTextBox(
                  color: Color.fromARGB(255, 172, 168, 168),
                  hintText: 'E-MAIL'),
              SizedBox(
                height: 30,
              ),
              Button()
            ],
          ),
          const SizedBox(
            width: 40,
          )
        ])
      ]),
    );
  }
}
