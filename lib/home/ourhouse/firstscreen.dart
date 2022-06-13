import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'We Move The\nDigital Industry',
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.2,
              fontSize: 100.0,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Macaria',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Forward',
                style: TextStyle(
                  fontSize: 100.0,
                  color: Colors.white,
                  fontFamily: 'Macaria',
                ),
              ),
              SizedBox(width: 50.0),
              Flexible(
                child: Text(
                  'A digital creative agency that designs and\ndevelops unique brand identies and tailor\nmade digital solutions.',
                  textAlign: TextAlign.justify,
                  softWrap: false,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20.0,
                    fontFamily: 'Macaria',
                    color: Color.fromARGB(255, 231, 226, 226),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
