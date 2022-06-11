import 'package:flutter/material.dart';

class ContactSecondScreen extends StatefulWidget {
  const ContactSecondScreen({Key? key}) : super(key: key);

  @override
  State<ContactSecondScreen> createState() => _ContactSecondScreenState();
}

class _ContactSecondScreenState extends State<ContactSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 100.0,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {},
              child: const Text(
                'YOUTUBE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Cocomat Ultra',
                  fontSize: 30,
                  color: Color.fromARGB(255, 231, 225, 225),
                ),
              )),
          const SizedBox(
            height: 40,
          ),
          InkWell(
              onTap: () {},
              child: const Text(
                'VIMEO',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Cocomat Ultra',
                  fontSize: 30,
                  color: Color.fromARGB(255, 233, 227, 227),
                ),
              )),
          const SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: () {},
              child: const Text(
                'INSTAGRAM',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Cocomat Ultra',
                  fontSize: 30,
                  color: Color.fromARGB(255, 238, 232, 232),
                ),
              )),
          const SizedBox(
            height: 60,
          ),
          InkWell(
              onTap: () {},
              child: const Text(
                'DRIBBLE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Cocomat Ultra',
                  fontSize: 30,
                  color: Color.fromARGB(255, 241, 235, 235),
                ),
              )),
        ],
      ),
    );
  }
}
