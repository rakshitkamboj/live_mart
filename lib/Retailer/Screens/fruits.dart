import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

CollectionReference FruitsRef =
    FirebaseFirestore.instance.collection("FruitsVegetables");

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  bool inStock = false;
  SaladStockCheck() {
    if (int.parse(SaladQuantityController.text) <= 0) {
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

  String FruitId = Uuid().v4();
  TextEditingController SaladtextController = TextEditingController();
  TextEditingController SaladQuantityController = TextEditingController();
  TextEditingController SaladPriceController = TextEditingController();
  SaladPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: SaladtextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: SaladPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: SaladQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return FruitsRef.doc(FruitId).set({
                "Name": SaladtextController.text,
                "Quantity": SaladQuantityController.text,
                "Price": SaladPriceController.text,
                "In Stock": SaladStockCheck(),
                "imgUrl": "Images/salad.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  SpinachStockCheck() {
    if (int.parse(SpinachQuantityController.text) <= 0) {
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

  TextEditingController SpinachtextController = TextEditingController();
  TextEditingController SpinachQuantityController = TextEditingController();
  TextEditingController SpinachPriceController = TextEditingController();
  SpinachPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: SpinachtextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: SpinachPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: SpinachQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return FruitsRef.doc(FruitId).set({
                "Name": SpinachtextController.text,
                "Quantity": SpinachQuantityController.text,
                "Price": SpinachPriceController.text,
                "In Stock": SpinachStockCheck(),
                "imgUrl": "Images/spinach.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  AppleStockCheck() {
    if (int.parse(AppleQuantityController.text) <= 0) {
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

  TextEditingController AppletextController = TextEditingController();
  TextEditingController AppleQuantityController = TextEditingController();
  TextEditingController ApplePriceController = TextEditingController();
  ApplePressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: AppletextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: ApplePriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: AppleQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return FruitsRef.doc(FruitId).set({
                "Name": AppletextController.text,
                "Quantity": AppleQuantityController.text,
                "Price": ApplePriceController.text,
                "In Stock": AppleStockCheck(),
                "imgUrl": "Images/apple.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  GrapeStockCheck() {
    if (int.parse(GrapeQuantityController.text) <= 0) {
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

  TextEditingController GrapetextController = TextEditingController();
  TextEditingController GrapeQuantityController = TextEditingController();
  TextEditingController GrapePriceController = TextEditingController();
  GrapePressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: GrapetextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: GrapePriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: GrapeQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return FruitsRef.doc(FruitId).set({
                "Name": GrapetextController.text,
                "Quantity": GrapeQuantityController.text,
                "Price": GrapePriceController.text,
                "In Stock": GrapeStockCheck(),
                "imgUrl": "Images/grapes.jpg",
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
        title: Text("Fruits and Vegetables"),
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
                          image: AssetImage("Images/salad.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Salad",
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
                                  return SaladPressed();
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
                          image: AssetImage("Images/spinach.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Vegetable",
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
                                  return SpinachPressed();
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
                          image: AssetImage("Images/apple.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Fruits",
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
                                  return ApplePressed();
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
                          image: AssetImage("Images/juices.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Juices",
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
                                  return GrapePressed();
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
