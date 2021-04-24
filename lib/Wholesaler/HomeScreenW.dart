import 'package:flutter/material.dart';
import 'package:live_mart/Retailer/Screens/AddItems.dart';
import 'package:live_mart/Retailer/Screens/CustomerDetails.dart';
import 'package:live_mart/Retailer/Screens/DeleteItems.dart';
import 'package:live_mart/Retailer/Screens/Feedbacks.dart';
import 'package:live_mart/Retailer/Screens/UpdateItems.dart';
import 'package:live_mart/Retailer/Screens/placeOrder.dart';

class HomeScreenW extends StatefulWidget {
  @override
  _HomeScreenWState createState() => _HomeScreenWState();
}

class _HomeScreenWState extends State<HomeScreenW> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome, WholeSaler")),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Live Mart'),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text('Customer Records'),
              onTap: () {
                // Update the state of the app.
                // ...
                //  Navigator.pop(context);
                // Navigator.push(
                //  context,
                // MaterialPageRoute(builder: (context) {
                // /  return CustomerDetails();
                // }),
                //);
              },
            ),
            ListTile(
              title: Text('Feedback Received'),
              onTap: () {
                // Update the state of the app.
                // ...
                //  Navigator.pop(context);
                //  Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) {
                //    return Feedbacks();
                //  }),
                // );
              },
            ),
          ],
        ),
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
                    return AddItems();
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
                            image: AssetImage("Images/groceryAdd.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Add Items",
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
                    return DeleteItems();
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
                            image: AssetImage("Images/groceryDelete.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Delete Items",
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
                    return UpdateItems();
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
                            image: AssetImage("Images/groceryUpdate.jpg"),
                            height: height * 0.2,
                            width: width * 3,
                          ),
                        ),
                        Positioned(
                          child: Text("Update Items",
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
