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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
              SizedBox(height: 10),
              MobileTextBox(
                  color: Color.fromARGB(255, 172, 168, 168),
                  hintText: 'FULL NAME | ORGANISATION NAME'),
              SizedBox(height: 10),
              MobileTextBox(
                  color: Color.fromARGB(255, 172, 168, 168),
                  hintText: 'E-MAIL'),
              SizedBox(
                height: 30,
              ),
              Button()
            ],
          ),
        ]),
        const SizedBox(
          height: 30,
        ),
        InkWell(
            onTap: () {},
            child: const Text(
              'YOUTUBE',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 25,
                color: Color.fromARGB(255, 231, 225, 225),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: () {},
            child: const Text(
              'VIMEO',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 25,
                color: Color.fromARGB(255, 233, 227, 227),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: () {},
            child: const Text(
              'INSTAGRAM',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 25,
                color: Color.fromARGB(255, 238, 232, 232),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: () {},
            child: const Text(
              'DRIBBLE',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 25,
                color: Color.fromARGB(255, 241, 235, 235),
              ),
            )),
        const SizedBox(
          height: 40,
        ),
      ]),
    );
  }
}
