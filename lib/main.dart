import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:risolutertask/splash_screen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Manrope"),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
