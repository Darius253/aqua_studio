import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: const Color.fromARGB(51, 51, 51, 51),
                  width: 300,
                  height: 150,
                ),
                const SizedBox(width: 15),
                const Text(
                  'SHORT FILMS',
                  style: TextStyle(
                      fontFamily: 'Cocomat Ultra',
                      fontSize: 40,
                      color: Color.fromARGB(255, 172, 168, 168)),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  color: const Color.fromARGB(51, 51, 51, 51),
                  height: 150,
                  width: 300,
                ),
                const SizedBox(width: 15),
                const Text(
                  'LOGO ANIMATION',
                  style: TextStyle(
                      fontFamily: 'Cocomat Ultra',
                      fontSize: 40,
                      color: Color.fromARGB(255, 172, 168, 168)),
                )
              ],
            )
          ],
        ));
  }
}
