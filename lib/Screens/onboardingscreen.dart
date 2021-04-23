// import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';
// import 'package:intro_screen_onboarding_flutter/intro_app.dart';
// import 'package:intro_screen_onboarding_flutter/introduction.dart';
// import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
// import 'package:flutter/material.dart';
// import 'package:live_mart/Customer/SignUpC.dart';
// import 'package:live_mart/main.dart';
// import 'package:flutter/material.dart';
// import 'package:live_mart/Screens/Sign_Up.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final List<Introduction> list = [
//     Introduction(
//       title: 'Customer',
//       subTitle: 'Browse the menu and order directly from the application',
//       member: 'Already a Customer?',
//       onpressedS: (context) {
//         print("yes");
//         // Navigator.pushNamed(context, '/SignUpC');
//         //Navigator.push(
//         //context,
//         //  MaterialPageRoute(builder: (context) {
//         //  return SignUpC();
//         //}),
//         //);
//       },
//       onpressedL: (context) {
//         // Navigator.pushNamed(context, '/SignInC');
//       },
//     ),
//     Introduction(
//       title: 'Retailer',
//       subTitle: 'Add your products to app',
//       member: 'Already a Retailer?',
//       onpressedS: (context) {
//         // Navigator.pushNamed(context, '/SignUpR');
//       },
//       onpressedL: (context) {
//         // Navigator.pushNamed(context, '/SignInR');
//       },
//     ),
//     Introduction(
//       title: 'Wholesaler',
//       subTitle: 'Let people buy your products',
//       member: 'Already a Wholesaler?',
//       onpressedS: (context) {
//         // Navigator.pushNamed(context, '/SignUpW');
//       },
//       onpressedL: (context) {
//         // Navigator.pushNamed(context, '/SignInW');
//       },
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return IntroScreenOnboarding(
//       introductionList: list,
//     );
//   }
// }
