import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class FirstChild extends StatefulWidget {
  const FirstChild({Key? key}) : super(key: key);

  @override
  State<FirstChild> createState() => _FirstChildState();
}

class _FirstChildState extends State<FirstChild> {
  final TextStyle _textStyle = const TextStyle(
    height: 1.5,
    fontSize: 20.0,
    fontFamily: 'Macaria',
    color: Color.fromARGB(255, 231, 226, 226),
  );

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
              height: 1.4,
              fontSize: 100.0,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Macaria',
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Forward',
                      style: TextStyle(
                        fontSize: 100.0,
                        color: Colors.white,
                        fontFamily: 'Macaria',
                      ),
                    ),
                    SizedBox(height: Get.height * 0.1),
                    const Text(
                      'INTRODUCING A\nNEW AGE OF VISUAL\nIDENTITIES',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 40.0,
                        fontFamily: 'Cocomat Ultra',
                        color: Color.fromARGB(255, 189, 185, 185),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A digital creative agency that designs and\ndevelops unique brand identies and tailor\nmade digital solutions.',
                      style: _textStyle,
                    ),
                    SizedBox(height: Get.height * 0.04),
                    Text(
                      'A digital creative agency that designs and\ndevelops unique brand identities and tailor\nmade solutions.',
                      style: _textStyle,
                    ),
                    SizedBox(height: Get.height * 0.04),
                    Text(
                      'We help our client from the definition of their\nstrategy to the realization of their digital\necosystem . At the heart of our approach is the\nconstant search for the juncture between\naesthetic beauty and technical performance.',
                      style: _textStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
