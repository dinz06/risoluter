import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  List tabs = [
    Home(),
    Center(child: Text("Schedule")),
    Center(child: Text("Prescription")),
    Center(child: Text("Search")),
    Center(child: Text("Chat")),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        height: 83 * (height / 822),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), // Same as the container
            topRight: Radius.circular(20), // Same as the container
          ),
          child: BottomNavigationBar(
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: Get.textScaleFactor*10
            ),
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: Get.textScaleFactor*10
            ),
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(color: Colors.white),
            selectedIconTheme: IconThemeData(color: Color(0xff5CA7D6)),
            selectedItemColor: Color(0xff5CA7D6),
            unselectedItemColor: Colors.white,
         backgroundColor: Color(0xff1D3557),
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Schedule"),
              BottomNavigationBarItem(
                icon: Icon(Icons.medical_services_rounded),
                label: "Prescription",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
