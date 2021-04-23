import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:live_mart/Retailer/Screens/Bakery.dart';
import 'package:live_mart/Retailer/Screens/cookie.dart';
import 'package:live_mart/Retailer/Screens/dairyproducts.dart';
import 'package:live_mart/Retailer/Screens/fruits.dart';

class AddItems extends StatefulWidget {
  @override
  _AddItemsState createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  Future<void> addCookies() {
    return FirebaseFirestore.instance.collection('BiscuitsCookies').add({
      "name": ,
      "inStock": ,
      "price":
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Items"),
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
                    return DairyProducts();
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
                    return Bakery();
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
                    return Cookie();
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
                    return Fruits();
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
