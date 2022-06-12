import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: Doubles.horizontalMargin,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 4,
            child: Text(
              'INTRODUCING A\nNEW AGE OF VISUAL\nIDENTITIES',
              softWrap: false,
              style: TextStyle(
                height: 1.5,
                fontSize: 45.0,
                fontFamily: 'Cocomat Ultra',
                color: Color.fromARGB(255, 189, 185, 185),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'A digital creative agency that designs and\ndevelops unique brand identities and tailor\nmade solutions.',
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20.0,
                    fontFamily: Fonts.macaria,
                    color: Color.fromARGB(255, 253, 253, 253),
                  ),
                ),
                SizedBox(height: Get.height * 0.07),
                const Text(
                  'We help our client from the definition of their\nstrategy to the realization of their digital\necosystem . At the heart of our approach is the\nconstant search for the juncture between\naesthetic beauty and technical performance.',
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20.0,
                    fontFamily: Fonts.macaria,
                    color: Color.fromARGB(255, 253, 253, 253),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
