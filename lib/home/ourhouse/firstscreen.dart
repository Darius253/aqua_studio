import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'We Move The\nDigital Industry',
            textAlign: TextAlign.left,
            style: TextStyle(
                height: 1.5,
                fontSize: 100,
                color: Colors.white,
                fontFamily: 'Macaria'),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            Text(
              'Forward',
              style: TextStyle(
                  fontSize: 100, color: Colors.white, fontFamily: 'Macaria'),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                  ' A digital creative agency that designs and\ndevelops unique brand identies and tailor\nmade digital solutions.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      height: 2,
                      fontFamily: 'Macaria',
                      fontSize: 20,
                      color: Color.fromARGB(255, 231, 226, 226))),
            ),
          ])
        ],
      ),
    );
  }
}
