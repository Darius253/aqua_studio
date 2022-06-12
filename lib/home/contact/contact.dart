import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('contact'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.2) {
          viewController.currentView.value = Views.contact;
          viewController.currentViewIndex.value = 2;
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'REQUEST SERVICE',
              style: TextStyle(
                fontFamily: 'Cocomat Ultra',
                fontSize: 40,
                color: Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  const TextBox(
                      color: Color.fromARGB(255, 170, 169, 169),
                      hintText: 'TYPE YOUR MESSAGE HERE'),
                  const SizedBox(width: 100),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'YOUTUBE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Cocomat Ultra',
                            fontSize: 50,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        )),
                  )
                ]),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TextBox(
                        color: Color.fromARGB(255, 170, 169, 169),
                        hintText: 'FULL NAME | ORGANISATION NAME'),
                    const SizedBox(width: 100),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'VIMEO',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Cocomat Ultra',
                              fontSize: 50,
                              color: Color.fromARGB(255, 245, 243, 243),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TextBox(
                        color: Color.fromARGB(255, 170, 169, 169),
                        hintText: 'E-MAIL'),
                    const SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'INSTAGRAM',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Cocomat Ultra',
                              fontSize: 50,
                              color: Color.fromARGB(255, 245, 243, 243),
                            ),
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Row(children: const [Button()])),
                    const SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'DRIBBLE',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Cocomat Ultra',
                              fontSize: 50,
                              color: Color.fromARGB(255, 245, 243, 243),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
