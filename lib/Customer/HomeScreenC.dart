import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:live_mart/Customer/OrdersC.dart';
import 'package:live_mart/Customer/searchBar.dart';
import 'package:live_mart/Retailer/Screens/Feedbacks.dart';

class HomeScreenC extends StatefulWidget {
  @override
  _HomeScreenCState createState() => _HomeScreenCState();
}

class _HomeScreenCState extends State<HomeScreenC> {
  @override
  Widget build(BuildContext context) {
    final User user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Welcome to LiveMart',
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Search Items'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SearchAppBarDelegate();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Place an Order'),
              onTap: () {
                // Update the state of the app.
                // ...
                //  Navigator.pop(context);
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) {
                //  return PlaceOrder();
                //}),
                //);
              },
            ),
            ListTile(
              title: Text('Your Orders'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return YourOrders();
                  }),
                );
              },
            ),
            ListTile(
              title: Text('Feedback/Queries'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Feedbacks();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.pushNamed(context, '/CartScreen');
            },
          )
        ],
        title: Text("LiveMart"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 5.0,
                      color: Colors.black87.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Text(
                        "Search",
                        style:
                            TextStyle(color: Color(0xff9B9B9B), fontSize: 17),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    'Select the category',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/VegetableC');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Images/salad.jpg"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        "Vegetables",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 38.0,
                            height: 1.4,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/ReadyMade');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Images/Cookie.jpg"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        "ReadyMade food",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 38.0,
                            height: 1.4,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/DairyC');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://dailytimes.com.pk/assets/uploads/2018/07/15/illustration-of-dairy-products.jpg"),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        "Dairy Products",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 38.0,
                            height: 1.4,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/BakeryC');
                    },
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Images/cheese.jpg'),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        "Bakery Products",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 38.0,
                            height: 1.4,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
