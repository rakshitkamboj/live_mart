import 'package:flutter/material.dart';
import 'package:live_mart/Retailer/Screens/updatebakery.dart';
import 'package:live_mart/Retailer/Screens/updatecookie.dart';
import 'package:live_mart/Retailer/Screens/updatedairy.dart';
import 'package:live_mart/Retailer/Screens/updatefruits.dart';

class UpdateItems extends StatefulWidget {
  @override
  _UpdateItemsState createState() => _UpdateItemsState();
}

class _UpdateItemsState extends State<UpdateItems> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Items"),
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
                    return UpdateDairyProducts();
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
                    return UpdateBakery();
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
                    return UpdateCookie();
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
                    return UpdateFruits();
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
