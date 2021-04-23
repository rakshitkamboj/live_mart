import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

CollectionReference CookieRef =
    FirebaseFirestore.instance.collection("BiscuitsCookies");

class Cookie extends StatefulWidget {
  @override
  _CookieState createState() => _CookieState();
}

class _CookieState extends State<Cookie> {
  bool inStock = false;
  CookieStockCheck() {
    if (int.parse(CookieQuantityController.text) <= 0) {
      setState(() {
        inStock = false;
      });
    } else {
      setState(() {
        inStock = true;
      });
    }
    return inStock;
  }

  String CookieId = Uuid().v4();
  TextEditingController CookietextController = TextEditingController();
  TextEditingController CookieQuantityController = TextEditingController();
  TextEditingController CookiePriceController = TextEditingController();
  CookiePressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: CookietextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: CookiePriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: CookieQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return CookieRef.doc(CookieId).set({
                "Name": CookietextController.text,
                "Quantity": CookieQuantityController.text,
                "Price": CookiePriceController.text,
                "In Stock": CookieStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  BiscuitStockCheck() {
    if (int.parse(BiscuitQuantityController.text) <= 0) {
      setState(() {
        inStock = false;
      });
    } else {
      setState(() {
        inStock = true;
      });
    }
    return inStock;
  }

  TextEditingController BiscuittextController = TextEditingController();
  TextEditingController BiscuitQuantityController = TextEditingController();
  TextEditingController BiscuitPriceController = TextEditingController();
  BiscuitPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: BiscuittextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: BiscuitPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: BiscuitQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return CookieRef.doc(CookieId).set({
                "Name": BiscuittextController.text,
                "Quantity": BiscuitQuantityController.text,
                "Price": BiscuitPriceController.text,
                "In Stock": BiscuitStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  CrunchStockCheck() {
    if (int.parse(CrunchQuantityController.text) <= 0) {
      setState(() {
        inStock = false;
      });
    } else {
      setState(() {
        inStock = true;
      });
    }
    return inStock;
  }

  TextEditingController CrunchtextController = TextEditingController();
  TextEditingController CrunchQuantityController = TextEditingController();
  TextEditingController CrunchPriceController = TextEditingController();
  CrunchPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: CrunchtextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: CrunchPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: CrunchQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return CookieRef.doc(CookieId).set({
                "Name": CrunchtextController.text,
                "Quantity": CrunchQuantityController.text,
                "Price": CrunchPriceController.text,
                "In Stock": CrunchStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  BunStockCheck() {
    if (int.parse(BunQuantityController.text) <= 0) {
      setState(() {
        inStock = false;
      });
    } else {
      setState(() {
        inStock = true;
      });
    }
    return inStock;
  }

  TextEditingController BuntextController = TextEditingController();
  TextEditingController BunQuantityController = TextEditingController();
  TextEditingController BunPriceController = TextEditingController();
  BunPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: BuntextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: BunPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: BunQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return CookieRef.doc(CookieId).set({
                "Name": BuntextController.text,
                "Quantity": BunQuantityController.text,
                "Price": BunPriceController.text,
                "In Stock": BunStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscuits and Cookies"),
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
              Container(
                height: height * 0.25,
                width: width * 1.5,
                child: Card(
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image(
                          image: AssetImage("Images/Cookie.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Cookies",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.008,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return CookiePressed();
                                });
                          },
                          child: Text("Add this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.62,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.25,
                width: width * 1.5,
                child: Card(
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image(
                          image: AssetImage("Images/Biscuits.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Biscuits",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.008,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return BiscuitPressed();
                                });
                          },
                          child: Text("Add this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.62,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.25,
                width: width * 1.5,
                child: Card(
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image(
                          image: AssetImage("Images/Crunchs.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Crunchs",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.008,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return CrunchPressed();
                                });
                          },
                          child: Text("Add this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.62,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.25,
                width: width * 1.5,
                child: Card(
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image(
                          image: AssetImage("Images/Buns.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Buns",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.008,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return BunPressed();
                                });
                          },
                          child: Text("Add this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.62,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
