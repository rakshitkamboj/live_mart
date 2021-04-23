import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

CollectionReference BakeryRef = FirebaseFirestore.instance.collection("Bakery");

class Bakery extends StatefulWidget {
  @override
  _BakeryState createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
  bool inStock = false;
  BreadStockCheck() {
    if (int.parse(breadQuantityController.text) <= 0) {
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

  String bakeryId = Uuid().v4();
  TextEditingController breadtextController = TextEditingController();
  TextEditingController breadQuantityController = TextEditingController();
  TextEditingController breadPriceController = TextEditingController();
  BreadPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: breadtextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: breadPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: breadQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return BakeryRef.doc(bakeryId).set({
                "Name": breadtextController.text,
                "Quantity": breadQuantityController.text,
                "Price": breadPriceController.text,
                "In Stock": BreadStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  CakeStockCheck() {
    if (int.parse(CakeQuantityController.text) <= 0) {
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

  TextEditingController CaketextController = TextEditingController();
  TextEditingController CakePriceController = TextEditingController();
  TextEditingController CakeQuantityController = TextEditingController();
  CakePressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: CaketextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: CakePriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: CakeQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return BakeryRef.doc(bakeryId).set({
                "Name": CaketextController.text,
                "Quantity": CakeQuantityController.text,
                "Price": CakePriceController.text,
                "In Stock": CakeStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  IceCreamStockCheck() {
    if (int.parse(IceCreamQuantityController.text) <= 0) {
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

  TextEditingController IceCreamtextController = TextEditingController();
  TextEditingController IceCreamPriceController = TextEditingController();
  TextEditingController IceCreamQuantityController = TextEditingController();
  IceCreamPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: IceCreamtextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: IceCreamPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: IceCreamQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return BakeryRef.doc(bakeryId).set({
                "Name": IceCreamtextController.text,
                "Quantity": IceCreamQuantityController.text,
                "Price": IceCreamPriceController.text,
                "In Stock": IceCreamStockCheck()
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  CandyStockCheck() {
    if (int.parse(CandyQuantityController.text) <= 0) {
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

  TextEditingController CandytextController = TextEditingController();
  TextEditingController CandyPriceController = TextEditingController();
  TextEditingController CandyQuantityController = TextEditingController();
  CandyPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: CandytextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: CandyPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: CandyQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return BakeryRef.doc(bakeryId).set({
                "Name": CandytextController.text,
                "Quantity": CandyQuantityController.text,
                "Price": CandyPriceController.text,
                "In Stock": CandyStockCheck()
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
        title: Text("Bakery"),
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
                          image: AssetImage("Images/bread.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Bread",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.02,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) => BreadPressed());
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
                          image: AssetImage("Images/cake.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Cake",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.011,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) => CakePressed());
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
                          image: AssetImage("Images/Icecream.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Ice-Cream",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.02,
                      ),
                      Positioned(
                        child: TextButton(
                          onPressed: () {
                            return showDialog(
                                context: context,
                                builder: (context) => IceCreamPressed());
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
                          image: AssetImage("Images/candy.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Candy",
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
                                builder: (context) => CandyPressed());
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
