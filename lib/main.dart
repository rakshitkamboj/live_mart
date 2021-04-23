import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:live_mart/Customer/CartScreen.dart';
import 'package:live_mart/Customer/SignUpC.dart';
import 'package:live_mart/Screens/Sign_Up.dart';
import 'package:live_mart/Screens/onboardingscreen.dart';
import 'package:live_mart/Retailer/SignUpR.dart';
import 'package:live_mart/Wholesaler/SignupW.dart';
import 'package:live_mart/Retailer/SignInR.dart';
import 'Retailer/HomeScreenR.dart';
import 'Wholesaler/HomeScreenW.dart';
import 'Wholesaler/SignInW.dart';
import 'Customer/SignInC.dart';
import 'Customer/HomeScreenC.dart';
import 'Screens/onboardscreen.dart';
import 'package:live_mart/Customer/Categories/ReadyMadefood.dart';
import 'package:live_mart/Customer/Categories/Bakery.dart';
import 'package:live_mart/Customer/Categories/Vegetables.dart';
import 'package:live_mart/Customer/Categories/DairyProducts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/CartScreen': (context) => CartScreen(),
        '/ReadyMade': (context) => ReadyMadeFood(),
        '/SignUpR': (context) => SignUpR(),
        '/SignUpC': (context) => SignUpC(),
        '/SignUpW': (context) => SignUpW(),
        '/SignInR': (context) => SignInR(),
        '/SignInC': (context) => SignInC(),
        '/SignInW': (context) => SignInW(),
        '/HomeScreenR': (context) => HomeScreenR(),
        '/HomeScreenW': (context) => HomeScreenW(),
        '/HomeScreenC': (context) => HomeScreenC(),
        '/BakeryC':(context)=>Bakeryy(),
        '/VegetableC':(context)=> FruitVeg(),
        '/DairyC':(context)=> Dairyy(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoard(),
    );
  }
}
