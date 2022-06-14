import 'package:aqua_studio/shared/exports.dart';
import 'package:flutter/material.dart';

class SecondChild extends StatelessWidget {
  const SecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60,
        bottom: 100,
        left: Doubles.horizontalMargin,
        right: Doubles.horizontalMargin,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: Get.height * 0.3,
                  margin: EdgeInsets.only(right: Get.width * 0.06),
                  color: const Color.fromARGB(51, 51, 51, 51),
                ),
              ),
              const Expanded(
                child: Text(
                  'SHORT FILMS',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Cocomat Ultra',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.06),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: Get.height * 0.3,
                  margin: EdgeInsets.only(right: Get.width * 0.06),
                  color: const Color.fromARGB(51, 51, 51, 51),
                ),
              ),
              // SizedBox(width: Get.width * 0.06),
              const Expanded(
                child: Text(
                  'LOGO ANIMATION',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Cocomat Ultra',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.03),
        ],
      ),
    );
  }
}
