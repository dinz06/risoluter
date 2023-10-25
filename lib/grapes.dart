import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Grapes extends StatelessWidget {
  const Grapes({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height / 7.08,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage("assets/images/img_13.png"), fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Positioned(
            top: height / 48.35,
            left: width / 22.5,
            child: Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("7 Health Benefits Of",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: Get.textScaleFactor * 10)),
                  Text("Grapes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: Get.textScaleFactor * 24))
                ],
              ),
            ),
          ),
          Positioned(
            top: height / 10.40,
            left: width / 14,
            child: Align(
              child: Container(
                height: height / 45.66,
                width: width / 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xff3F1B1F)),
                child: Center(
                  child: Text("Read More",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: Get.textScaleFactor * 8)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
