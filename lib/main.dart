import 'package:diabetes_app/screen/bottomBar.dart';
import 'package:diabetes_app/screen/healthSupportServices.dart';
import 'package:diabetes_app/screen/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBar(),
      routes: {
        HealthSupportServices.routeName: (context) => HealthSupportServices(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
