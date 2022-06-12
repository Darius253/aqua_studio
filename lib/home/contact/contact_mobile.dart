import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final ViewController viewController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50.0, left: 30),
          child: TopTitle(text: 'CONTACT'),
        ),
        VisibilityDetector(
          key: const Key('contact'),
          onVisibilityChanged: (visibilityInfo) {
            if (visibilityInfo.visibleFraction > 0.2) {
              viewController.currentView.value = Views.contact;
              viewController.currentViewIndex.value = 2;
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 30.0,
              right: 20.0,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'REQUEST SERVICE',
                    style: TextStyle(
                      fontFamily: 'Cocomat Ultra',
                      fontSize: 25,
                      color: Color.fromARGB(255, 230, 226, 226),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MobileTextBox(
                            color: Color.fromARGB(255, 172, 168, 168),
                            hintText: 'TYPE YOUR MESSAGE HERE'),
                        SizedBox(height: 10),
                        MobileTextBox(
                            color: Color.fromARGB(255, 172, 168, 168),
                            hintText: 'FULL NAME | ORGANISATION NAME'),
                        SizedBox(height: 10),
                        MobileTextBox(
                            color: Color.fromARGB(255, 172, 168, 168),
                            hintText: 'E-MAIL'),
                        SizedBox(
                          height: 30,
                        ),
                        Button()
                      ],
                    ),
                  ]),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'YOUTUBE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Cocomat Ultra',
                          fontSize: 25,
                          color: Color.fromARGB(255, 231, 225, 225),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'VIMEO',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Cocomat Ultra',
                          fontSize: 25,
                          color: Color.fromARGB(255, 233, 227, 227),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'INSTAGRAM',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Cocomat Ultra',
                          fontSize: 25,
                          color: Color.fromARGB(255, 238, 232, 232),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'DRIBBLE',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Cocomat Ultra',
                          fontSize: 25,
                          color: Color.fromARGB(255, 241, 235, 235),
                        ),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
