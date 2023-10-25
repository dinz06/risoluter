import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Veggies extends StatelessWidget {
  const Veggies({super.key});

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
            image: AssetImage("assets/images/img_12.png"), fit: BoxFit.fill),
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
                  Text("5 FOOD ROUTINE\n TO CONTROL",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: Get.textScaleFactor * 12.07)),
                  Text("DIABETES",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: Get.textScaleFactor * 24.14))
                ],
              ),
            ),
          ),
          Positioned(
            top: height / 10.40,
            left: width / 9,
            child: Align(
              child: Container(
                height: height / 45.66,
                width: width / 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xff413A41)),
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
