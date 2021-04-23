import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreenC extends StatefulWidget {
  @override
  _HomeScreenCState createState() => _HomeScreenCState();
}

class _HomeScreenCState extends State<HomeScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 5.0,
                      color: Colors.black87.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Text(
                        "Search",
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 17),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                child: Column(children: [
                  Text(
                    'Select the category',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover)),
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      "Cute Cats of\nEducity",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 38.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
