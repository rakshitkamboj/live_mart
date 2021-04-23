import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

CollectionReference DairyRef =
    FirebaseFirestore.instance.collection("DairyProducts");

class DairyProducts extends StatefulWidget {
  @override
  _DairyProductsState createState() => _DairyProductsState();
}

class _DairyProductsState extends State<DairyProducts> {
  bool inStock = false;
  MilkStockCheck() {
    if (int.parse(MilkQuantityController.text) <= 0) {
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

  String DairyId = Uuid().v4();
  TextEditingController MilktextController = TextEditingController();
  TextEditingController MilkQuantityController = TextEditingController();
  TextEditingController MilkPriceController = TextEditingController();
  MilkPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: MilktextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: MilkPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: MilkQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return DairyRef.doc(DairyId).set({
                "Name": MilktextController.text,
                "Quantity": MilkQuantityController.text,
                "Price": MilkPriceController.text,
                "In Stock": MilkStockCheck(),
                "imgUrl": "Images/milk.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  CheeseStockCheck() {
    if (int.parse(CheeseQuantityController.text) <= 0) {
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

  TextEditingController CheesetextController = TextEditingController();
  TextEditingController CheeseQuantityController = TextEditingController();
  TextEditingController CheesePriceController = TextEditingController();
  CheesePressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: CheesetextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: CheesePriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: CheeseQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return DairyRef.doc(DairyId).set({
                "Name": CheesetextController.text,
                "Quantity": CheeseQuantityController.text,
                "Price": CheesePriceController.text,
                "In Stock": CheeseStockCheck(),
                "imgUrl": "Images/cheese.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  ButterStockCheck() {
    if (int.parse(ButterQuantityController.text) <= 0) {
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

  TextEditingController ButtertextController = TextEditingController();
  TextEditingController ButterQuantityController = TextEditingController();
  TextEditingController ButterPriceController = TextEditingController();
  ButterPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: ButtertextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: ButterPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: ButterQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return DairyRef.doc(DairyId).set({
                "Name": ButtertextController.text,
                "Quantity": ButterQuantityController.text,
                "Price": ButterPriceController.text,
                "In Stock": ButterStockCheck(),
                "imgUrl": "Images/Butter.jpg",
              });
            },
            child: Text("Add")),
        TextButton(onPressed: () {}, child: Text("Cancel"))
      ],
    );
  }

  YoghurtStockCheck() {
    if (int.parse(YoghurtQuantityController.text) <= 0) {
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

  TextEditingController YoghurttextController = TextEditingController();
  TextEditingController YoghurtQuantityController = TextEditingController();
  TextEditingController YoghurtPriceController = TextEditingController();
  YoghurtPressed() {
    return AlertDialog(
      title: Text("Add Item"),
      content: Column(
        children: [
          TextFormField(
            controller: YoghurttextController,
            decoration: InputDecoration(hintText: "Name of the Food"),
          ),
          TextFormField(
            controller: YoghurtPriceController,
            decoration: InputDecoration(hintText: "Price of the Product"),
          ),
          TextFormField(
            controller: YoghurtQuantityController,
            decoration: InputDecoration(hintText: "Quantity"),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              return DairyRef.doc(DairyId).set({
                "Name": YoghurttextController.text,
                "Quantity": YoghurtQuantityController.text,
                "Price": YoghurtPriceController.text,
                "In Stock": YoghurtStockCheck(),
                "imgUrl": "Images/cake.jpg",
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
        title: Text("Dairy Products"),
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
                          image: AssetImage("Images/milk.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Milk",
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
                                builder: (context) {
                                  return MilkPressed();
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
                          image: AssetImage("Images/cheese.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Cheese",
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
                                builder: (context) {
                                  return CheesePressed();
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
                          image: AssetImage("Images/Butter.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Butter",
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
                                builder: (context) {
                                  return ButterPressed();
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
                          image: AssetImage("Images/Yoghurt.jpg"),
                          height: height * 0.2,
                          width: width * 3,
                        ),
                      ),
                      Positioned(
                        child: Text("Yoghurt",
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
                                  return YoghurtPressed();
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
