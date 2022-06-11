import 'package:flutter/material.dart';

class MobileSecondScreen extends StatelessWidget {
  const MobileSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'A digital creative agency that\ndesigns and develops unique brand\nidentities and tailor made\nsolutions.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Cocomat',
                  fontSize: 20,
                  wordSpacing: 1.5,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
                'We help our client from the\ndefinition of their strategy to the\nrealization of their digital ecosystem. ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    height: 1,
                    fontFamily: 'Cocomat',
                    fontSize: 20,
                    wordSpacing: 1.5,
                    color: Colors.white)),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  color: const Color.fromARGB(51, 51, 51, 51),
                  width: 100,
                  height: 80,
                ),
                const SizedBox(width: 15),
                const Text(
                  'SHORT\nFILMS',
                  style: TextStyle(
                      fontFamily: 'Cocomat Ultra',
                      fontSize: 25,
                      color: Color.fromARGB(255, 156, 153, 153)),
                )
              ],
            ),
          ],
        ));
  }
}
