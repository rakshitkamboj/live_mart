import 'package:flutter/material.dart';

class UpdateBakery extends StatefulWidget {
  @override
  _UpdateBakeryState createState() => _UpdateBakeryState();
}

class _UpdateBakeryState extends State<UpdateBakery> {
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Update this Item"),
                                      content: Column(
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Price of the Product"),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Quantity"),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        backgroundColor:
                                                            Colors.black38,
                                                        title: Text(
                                                          "Success",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        content: Text(
                                                          "Product is Updated",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ));
                                            },
                                            child: Text("Update")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("Cancel"))
                                      ],
                                    ));
                          },
                          child: Text("Update this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.60,
                      ),
                      Positioned(
                        child: Text("In Stock : 2",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.15,
                      ),
                      Positioned(
                        child: Text("Price: Rs.200",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.37,
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Update this Item"),
                                      content: Column(
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Price of the Product"),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Quantity"),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        backgroundColor:
                                                            Colors.black38,
                                                        title: Text(
                                                          "Success",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        content: Text(
                                                          "Product is Updated",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ));
                                            },
                                            child: Text("Update")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("Cancel"))
                                      ],
                                    ));
                          },
                          child: Text("Update this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.60,
                      ),
                      Positioned(
                        child: Text("In Stock : 2",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.15,
                      ),
                      Positioned(
                        child: Text("Price: Rs.200",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.37,
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Update this Item"),
                                      content: Column(
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Price of the Product"),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Quantity"),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        backgroundColor:
                                                            Colors.black38,
                                                        title: Text(
                                                          "Success",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        content: Text(
                                                          "Product is Updated",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ));
                                            },
                                            child: Text("Update")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("Cancel"))
                                      ],
                                    ));
                          },
                          child: Text("Update this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.60,
                      ),
                      Positioned(
                        child: Text("In Stock : 2",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.15,
                      ),
                      Positioned(
                        child: Text("Price: Rs.200",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.37,
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Update this Item"),
                                      content: Column(
                                        children: [
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Price of the Product"),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Quantity"),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        backgroundColor:
                                                            Colors.black38,
                                                        title: Text(
                                                          "Success",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        content: Text(
                                                          "Product is Updated",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ));
                                            },
                                            child: Text("Update")),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("Cancel"))
                                      ],
                                    ));
                          },
                          child: Text("Update this item",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w500)),
                        ),
                        top: height * 0.190,
                        left: width * 0.60,
                      ),
                      Positioned(
                        child: Text("In Stock : 2",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.15,
                      ),
                      Positioned(
                        child: Text("Price: Rs.200",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500)),
                        top: height * 0.206,
                        left: width * 0.37,
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
