import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class OurHouseMobile extends StatefulWidget {
  const OurHouseMobile({Key? key}) : super(key: key);

  @override
  State<OurHouseMobile> createState() => _OurHouseMobileState();
}

class _OurHouseMobileState extends State<OurHouseMobile> {
  @override
  Widget build(BuildContext context) {
    final ViewController viewController = Get.find();
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 50.0,
            left: 30,
          ),
          child: TopTitle(text: 'OURHOUSE'),
        ),
        VisibilityDetector(
          key: const Key('our house'),
          onVisibilityChanged: (visibilityInfo) {
            if (visibilityInfo.visibleFraction > 0.2) {
              viewController.currentView.value = Views.ourHouse;
              viewController.currentViewIndex.value = 1;
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'We Move\nThe Digital Industry\nForward',
                  style: TextStyle(
                      height: 1.3,
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'Macaria'),
                ),
                const Text(
                  'INTRODUCING A\nNEW AGE OF VISUAL\nIDENTITES',
                  style: TextStyle(
                      height: 1.3,
                      fontSize: 22,
                      color: Color.fromARGB(255, 184, 177, 177),
                      fontFamily: 'Cocomat Ultra'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'A digital creative agency that\ndesigns and develops unique brand\nidentities and tailor made\nsolutions.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 1.3,
                      fontFamily: 'Cocomat',
                      fontSize: 15,
                      wordSpacing: 1.5,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'We help our client from the\ndefinition of their strategy to the\nrealization of their digital ecosystem. ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        height: 1.3,
                        fontFamily: 'Cocomat',
                        fontSize: 15,
                        wordSpacing: 1.5,
                        color: Colors.white)),
                const SizedBox(
                  height: 10,
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
            ),
          ),
        ),
      ],
    );
  }
}
