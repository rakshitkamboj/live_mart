import 'package:flutter/material.dart';
import 'package:live_mart/Retailer/Screens/delBakery.dart';
import 'package:live_mart/Retailer/Screens/delcookie.dart';
import 'package:live_mart/Retailer/Screens/deldairy.dart';
import 'package:live_mart/Retailer/Screens/delfruits.dart';

class DeleteItems extends StatefulWidget {
  @override
  _DeleteItemsState createState() => _DeleteItemsState();
}

class _DeleteItemsState extends State<DeleteItems> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Items"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DelDairyProducts();
                  }));
                },
                child: Container(
                  height: height * 0.25,
                  width: width * 1.5,
                  child: Card(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage("Images/dairy.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Dairy Products",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                          top: height * 0.201,
                          left: width * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DelBakery();
                  }));
                },
                child: Container(
                  height: height * 0.25,
                  width: width * 1.5,
                  child: Card(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage("Images/bakery.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Bakery",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                          top: height * 0.201,
                          left: width * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DelCookie();
                  }));
                },
                child: Container(
                  height: height * 0.25,
                  width: width * 1.5,
                  child: Card(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage("Images/cookies.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Biscuits and Cookies",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                          top: height * 0.201,
                          left: width * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DelFruits();
                  }));
                },
                child: Container(
                  height: height * 0.25,
                  width: width * 1.5,
                  child: Card(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage("Images/fruits.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Fruits and Vegetables",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                          top: height * 0.201,
                          left: width * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
