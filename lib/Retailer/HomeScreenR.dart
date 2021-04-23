import 'package:flutter/material.dart';

class HomeScreenR extends StatefulWidget {
  @override
  _HomeScreenRState createState() => _HomeScreenRState();
}

class _HomeScreenRState extends State<HomeScreenR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text('welcome retiler'),
          ),
        ),
      ),
    );
  }
}
