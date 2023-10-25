import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Baby extends StatelessWidget {
  const Baby({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return  Container(
      height: height / 7.08,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage("assets/images/img_11.png"), fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Positioned(
            top: height / 48.35,
            left: width / 22.5,
            child: Align(
              child: Image.asset(
                "assets/images/img_15.png",
                height: height / 15.22,
                width: width / 5.45,
              ),
            ),
          ),
          Positioned(
            top: height / 10.53,
            left: width / 22.5,
            child: Align(
              child: Container(
                height: height / 45.66,
                width: width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text("Read More",
                      style: TextStyle(
                          color: Colors.black,
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
