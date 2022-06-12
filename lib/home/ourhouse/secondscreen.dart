import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 80),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'INTRODUCING A\nNEW AGE OF VISUAL\nIDENTITIES',
          softWrap: false,
          style: TextStyle(
              height: 1.5,
              fontFamily: 'Cocomat Ultra',
              fontSize: 45,
              color: Color.fromARGB(255, 189, 185, 185)),
        ),
        const SizedBox(
          width: 80,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'A digital creative agency that designs and\ndevelops unique brand identities and tailor\nmade solutions.',
              softWrap: false,
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Macaria',
                  fontSize: 20,
                  color: Color.fromARGB(255, 253, 253, 253)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'We help our client from the definition of their\nstrategy to the realization of their digital\necosystem . At the heart of our approach is the\nconstant search for the juncture between\naesthetic beauty and technical performance.',
              softWrap: false,
              style: TextStyle(
                  height: 1,
                  fontFamily: 'Macaria',
                  fontSize: 20,
                  color: Color.fromARGB(255, 253, 253, 253)),
            )
          ],
        ),
      ]),
    );
  }
}
