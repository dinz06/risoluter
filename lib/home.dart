import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:risolutertask/grapes.dart';
import 'package:risolutertask/veggies.dart';
import 'package:risolutertask/yoga.dart';

import 'babydesign.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? selectedContainerIndex;

  var height = Get.height;
  var width = Get.width;

  List images = [Baby(), Veggies(), Grapes(), Yoga()];

  bool show = false;

  List specialist = [
    {"img": "assets/images/dentist.png", "spl": "Dentist"},
    {"img": "assets/images/optometrist.png", "spl": "Optometrist"},
    {
      "img": "assets/images/img_7.png",
      "spl": "ENT",
    },
    {"img": "assets/images/neurologist.png", "spl": "Neurologist"},
    {"img": "assets/images/cardio.png", "spl": "Cardiologist"},
    {"img": "assets/images/ortho.png", "spl": "Orthopedic"},
    {"img": "assets/images/img_16.png", "spl": "Pediatrician"},
    {"img": "assets/images/img_17.png", "spl": "Dermatologist"},
    {"img": "assets/images/img_18.png", "spl": "Pulmonologist"},
  ];

  List details = [
    {
      "profile": "assets/images/img_19.png",
      "name": "Dr. Jaya Lakshmi",
      "degree": "M.S.(ENT), D.L.O",
      "splst": "ENT Specialist",
      "rating": "4.5",
      "address": "West Mambalam, chennai"
    },
    {
      "profile": "assets/images/img_20.png",
      "name": "Dr. Vijay Kumar",
      "degree": "M.B.B.S, D.L.O",
      "splst": "ENT Specialist",
      "rating": "4.1",
      "address": "West Mambalam, chennai"
    },
    {
      "profile": "assets/images/img_21.png",
      "name": "Dr. Siva Ram Krishnan",
      "degree": "M.B.B.S, D.L.O",
      "splst": "ENT Specialist",
      "rating": "4.0",
      "address": "Kodambakkam, chennai"
    },
    {
      "profile": "assets/images/img_22.png",
      "name": "Dr. Radha Shree",
      "degree": "M.S.(ENT).",
      "splst": "ENT Specialist",
      "rating": "3.5",
      "address": "West Mambalam, chennai"
    },
    {
      "profile": "assets/images/img_23.png",
      "name": "Dr. Ravi Kumar",
      "degree": "M.B.B.S, D.L.O",
      "splst": "ENT Specialist",
      "rating": "3.5",
      "address": "West Mambalam, chennai"
    },
    {
      "profile": "assets/images/img_32.png",
      "name": "Dr. Abhishek Raaja",
      "degree": "M.B.B.S, D.L.O",
      "splst": "ENT Specialist",
      "rating": "4.5",
      "address": "Tnagar, chennai"
    },
  ];

  var currentIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedContainerIndex = -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 22.5),
          child: Column(
            children: [
              SizedBox(
                height: height / 16.4,
              ),
              Container(
                width: width / 1.09,
                height: height / 12.4,
                //  color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                        left: width / 8.7,
                        child: Align(
                            child: Image.asset(
                          "assets/images/arrow.png",
                          width: width / 9.8,
                        ))),
                    Positioned(
                      top: height / 117.4,
                      child: Align(
                        child: Container(
                          height: height / 13.7,
                          width: width / 6,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/circleavatar.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 4.18,
                      child: Align(
                        child: Row(
                          children: [
                            Text("Good Morning",
                                style: TextStyle(
                                    color: Color(0xff457B9D),
                                    fontWeight: FontWeight.w500,
                                    fontSize: Get.textScaleFactor * 12)),
                            Image.asset(
                              "assets/images/img_3.png",
                              height: height / 34.25,
                              width: width / 15,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 68.5,
                      left: width / 4.18,
                      child: Align(
                        child: Text("Gokul v",
                            style: TextStyle(
                                color: Color(0xff457B9D),
                                fontWeight: FontWeight.w700,
                                fontSize: Get.textScaleFactor * 22)),
                      ),
                    ),
                    Positioned(
                      left: width / 1.20,
                      child: Align(
                        child: Image.asset(
                          "assets/images/menu.png",
                          height: height / 34.25,
                          width: width / 15,
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 4.44,
                      top: height / 31.61,
                      child: Align(
                        child: Image.asset(
                          "assets/images/agetemperature.png",
                          height: height / 20.55,
                          width: width / 1.45,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 58.71,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  enlargeCenterPage: true,
                  height: height / 7.08,
                  autoPlay: true,
                  viewportFraction: 1,
                  reverse: false,
                ),
                items: images.map((e) {
                  return Stack(
                    children: [
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: e,
                      ),
                      Positioned(
                        top: height / 8.68,
                        left: width / 3.05,
                        child: Align(
                          child: DotsIndicator(
                            dotsCount: images.length,
                            position: currentIndex,
                            decorator: DotsDecorator(
                              colors: [
                                Colors.white.withOpacity(0.6),
                                Colors.white.withOpacity(0.6),
                                Colors.white.withOpacity(0.6),
                                Colors.white.withOpacity(0.6),
                              ],
                              sizes: [
                                const Size(18.0, 5.0),
                                const Size(18.0, 5.0),
                                const Size(18.0, 5.0),
                                const Size(18.0, 5.0),
                              ],
                              shapes: [
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ],
                              activeSize: const Size(18.0, 5.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
              SizedBox(
                height: height / 48.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Appointment",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 16)),
                  Text("see all",
                      style: TextStyle(
                          color: Color(0xff1D3557),
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 15))
                ],
              ),
              SizedBox(
                height: height / 58.71,
              ),
              Container(
                height: height / 5.55,
                width: width / 1.09,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff457B9D)),
                child: Stack(
                  children: [
                    Positioned(
                      top: height / 82.2,
                      left: width / 36,
                      child: Align(
                        child: Container(
                          height: height / 13.7,
                          width: width / 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/senthil.png"))),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 37.3,
                      left: width / 4.28,
                      child: Align(
                        child: Text("Dr. Senthil Durai",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: Get.textScaleFactor * 14)),
                      ),
                    ),
                    Positioned(
                      top: height / 28.3,
                      left: width / 1.82,
                      child: Align(
                        child: Text("B.D.S., M.D.S.",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: Get.textScaleFactor * 8)),
                      ),
                    ),
                    Positioned(
                      top: height / 18.26,
                      left: width / 4.23,
                      child: Align(
                        child: Text("Dentist",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: Get.textScaleFactor * 10)),
                      ),
                    ),
                    Positioned(
                      top: height / 51.3,
                      left: width / 1.26,
                      child: Align(
                        child: Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 10.53,
                      child: Align(
                        child: Container(
                          height: height / 22.83,
                          width: width / 1.09,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff1D3557)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 9.90,
                      left: width / 20,
                      child: Align(
                        child: Image.asset(
                          "assets/images/img_4.png",
                          height: height / 34.25,
                          width: width / 15,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 9.44,
                      left: width / 7.5,
                      child: Align(
                        child: Text("Feb 20, 2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: Get.textScaleFactor * 12)),
                      ),
                    ),
                    Positioned(
                      top: height / 9.90,
                      left: width / 2.58,
                      child: Align(
                        child: Image.asset(
                          "assets/images/img_5.png",
                          height: height / 34.25,
                          width: width / 15,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 9.44,
                      left: width / 2.13,
                      child: Align(
                        child: Text("6:00 PM - 6: 30 PM",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: Get.textScaleFactor * 12)),
                      ),
                    ),
                    Positioned(
                      top: height / 7.08,
                      left: width / 12.85,
                      child: Align(
                        child: Image.asset(
                          "assets/images/img_6.png",
                          height: height / 34.25,
                          width: width / 15,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height / 6.62,
                      left: width / 6.54,
                      child: Align(
                        child: Text(
                            "No:42, Aryagowda Road, West Mambalam, chennai-33",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: Get.textScaleFactor * 10)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 48.35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choose your Specialist",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 16)),
                  Text("see all",
                      style: TextStyle(
                          color: Color(0xff1D3557),
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 15))
                ],
              ),
              SizedBox(
                height: height / 58.71,
              ),
              Container(
                height: height / 14.94,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: specialist.length,
                  itemBuilder: (context, index) {
                    show = index == 2;
                    bool isSelected = selectedContainerIndex == index;
                    return Padding(
                      padding: const EdgeInsets.only(right: 7.0),
                      child: GestureDetector(
                        onTap: () {
                          if (selectedContainerIndex == index) {
                            // Tapped the same container again, hide the text
                            setState(() {
                              selectedContainerIndex = -1;
                            });
                          } else {
                            // Tapped a different container, show the text
                            setState(() {
                              selectedContainerIndex = index;
                            });
                          }
                        },
                        child: Container(
                          height: height / 14.94,
                          width: width / 6.54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff1D3557),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                specialist[index]["img"],
                                color: isSelected
                                    ? Color(0xff5CA7D6)
                                    : Colors.white,
                                height: height / 37.36,
                                width: width / 16.36,
                              ),
                              Text(specialist[index]["spl"],
                                  style: TextStyle(
                                      color: isSelected
                                          ? Color(0xff5CA7D6)
                                          : Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Get.textScaleFactor * 8))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //  specialist[selectedContainerIndex]["spl"] == "ENT"
              selectedContainerIndex == 2
                  ? ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: details.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            height: height / 8.22,
                            width: width / 1.10,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000),
                                    spreadRadius: 0,
                                    blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: height / 82.2,
                                  left: width / 36,
                                  child: Align(
                                    child: Container(
                                      height: height / 13.7,
                                      width: width / 6,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  details[index]["profile"]))),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: height / 43.26,
                                  left: width / 4.09,
                                  child: Align(
                                    child: Text(details[index]["name"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                Get.textScaleFactor * 14)),
                                  ),
                                ),
                                Positioned(
                                  top: height / 31.61,
                                  left: width / 1.8,
                                  child: Align(
                                    child: Text(details[index]["degree"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: Get.textScaleFactor * 8)),
                                  ),
                                ),
                                Positioned(
                                  top: height / 19.11,
                                  left: width / 4.09,
                                  child: Align(
                                    child: Text(details[index]["splst"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                Get.textScaleFactor * 10)),
                                  ),
                                ),
                                Positioned(
                                  height: height / 54.8,
                                  left: width / 1.21,
                                  child: Align(
                                    child: Icon(
                                      Icons.more_vert_outlined,
                                      color: Color(0xff928C8C),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: height / 10.96,
                                  left: width / 18.94,
                                  child: Align(
                                    child: Image.asset(
                                      "assets/images/img_10.png",
                                      height: height / 51.37,
                                      width: width / 22.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: height / 11.10,
                                  left: width / 9,
                                  child: Align(
                                    child: Text(details[index]["rating"],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                Get.textScaleFactor * 14)),
                                  ),
                                ),
                                Positioned(
                                  top: height / 11.74,
                                  left: width / 1.98,
                                  child: Align(
                                    child: Text(details[index]["address"],
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Color(0xff656161),
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                Get.textScaleFactor * 10)),
                                  ),
                                ),
                                Positioned(
                                  top: height / 12.45,
                                  left: width / 1.21,
                                  child: Align(
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      color: Color(0xff656161),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height / 58.71,
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              SizedBox(
                height: height / 48.35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctors Near You",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 16)),
                  Text("see all",
                      style: TextStyle(
                          color: Color(0xff1D3557),
                          fontWeight: FontWeight.w700,
                          fontSize: Get.textScaleFactor * 15))
                ],
              ),
              design(),
              design(),
              design(),
              design(),

              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  design() {
    return Column(
      children: [
        SizedBox(
          height: height / 58.71,
        ),
        Container(
          height: height / 8.22,
          width: width / 1.10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xff000000), spreadRadius: 0, blurRadius: 5)
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                top: height / 82.2,
                left: width / 36,
                child: Align(
                  child: Container(
                    height: height / 13.7,
                    width: width / 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_9.png"))),
                  ),
                ),
              ),
              Positioned(
                top: height / 43.26,
                left: width / 4.09,
                child: Align(
                  child: Text("Dr. Raj Mohan",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: Get.textScaleFactor * 14)),
                ),
              ),
              Positioned(
                top: height / 31.61,
                left: width / 1.93,
                child: Align(
                  child: Text("M.B.B.S., D.O.,",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: Get.textScaleFactor * 8)),
                ),
              ),
              Positioned(
                height: height / 54.8,
                left: width / 1.21,
                child: Align(
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Color(0xff928C8C),
                  ),
                ),
              ),
              Positioned(
                top: height / 10.96,
                left: width / 18.94,
                child: Align(
                  child: Image.asset(
                    "assets/images/img_10.png",
                    height: height / 51.37,
                    width: width / 22.5,
                  ),
                ),
              ),
              Positioned(
                top: height / 11.10,
                left: width / 9,
                child: Align(
                  child: Text("4.5",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: Get.textScaleFactor * 14)),
                ),
              ),
              Positioned(
                top: height / 11.74,
                left: width / 1.98,
                child: Align(
                  child: Text("West Mambalam, chennai",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff656161),
                          fontWeight: FontWeight.w500,
                          fontSize: Get.textScaleFactor * 10)),
                ),
              ),
              Positioned(
                top: height / 12.45,
                left: width / 1.21,
                child: Align(
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Color(0xff656161),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
