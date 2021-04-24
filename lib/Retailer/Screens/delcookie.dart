import 'package:flutter/material.dart';

class DelCookie extends StatefulWidget {
  @override
  _DelCookieState createState() => _DelCookieState();
}

class _DelCookieState extends State<DelCookie> {
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black38,
                                      title: Text(
                                        "Success",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      content: Text(
                                        "Your Product is Deleted",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                          },
                          child: Text("Delete this item",
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black38,
                                      title: Text(
                                        "Success",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      content: Text(
                                        "Your Product is Deleted",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                          },
                          child: Text("Delete this item",
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black38,
                                      title: Text(
                                        "Success",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      content: Text(
                                        "Your Product is Deleted",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                          },
                          child: Text("Delete this item",
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
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black38,
                                      title: Text(
                                        "Success",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      content: Text(
                                        "Your Product is Deleted",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                          },
                          child: Text("Delete this item",
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
