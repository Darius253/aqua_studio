import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Doubles.horizontalMargin,
        vertical: 100,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: Get.width * 0.3,
                height: Get.height * 0.3,
                color: const Color.fromARGB(51, 51, 51, 51),
              ),
              SizedBox(width: Get.width * 0.1),
              const Text(
                'SHORT FILMS',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'Cocomat Ultra',
                ),
              )
            ],
          ),
          SizedBox(height: Get.height * 0.07),
          Row(
            children: [
              Container(
                width: Get.width * 0.3,
                height: Get.height * 0.3,
                color: const Color.fromARGB(51, 51, 51, 51),
              ),
              SizedBox(width: Get.width * 0.1),
              const Text(
                'LOGO ANIMATION',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'Cocomat Ultra',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
