import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUpC');
                },
                child: Container(
                  width: 85.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up for Customer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/SignInC');
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text("Already a Customer?"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUpR');
                },
                child: Container(
                  width: 85.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up for Retailer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/SignInR');
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text("Already a Retailer?"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUpW');
                },
                child: Container(
                  width: 85.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up for Wholesaler",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/SignInW');
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text("Already a Wholesaler?"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
