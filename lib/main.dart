import 'package:flutter/material.dart';

import 'package:live_mart/Screens/Sign_Up.dart';
import 'package:live_mart/Screens/onboardingscreen.dart';
import 'package:live_mart/Retailer/SignUpR.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpR(),
    );
  }
}
