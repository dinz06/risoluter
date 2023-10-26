import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'botomnav.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height = Get.height;
  var width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white,Color(0xff00AAF3)],
                 begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.fill,
                    opacity: 0.3
                  )
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: height / 5.04,
                  ),
                //    Image.asset("assets/images/img_1.png",height: Get.height / 7.3,width: Get.width / 4.7,)
               Container(
                 height: height / 7.3,
                 width: width / 2.06,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/images/img_1.png")
                   )
                 ),
               ),
                  SizedBox(height: height/2.06,),
                  GestureDetector(
                    onTap: () => Get.to(BottomNav()),
                    child: Container(
                      height: height/17.8,
                      width: width/1.09,
                      decoration: BoxDecoration(
                        color: Color(0xff1D3557),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:  Center(
                        child: Text("Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: Get.textScaleFactor*18
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
