import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:live_mart/Retailer/Screens/Feedbacks.dart';

class Bakeryy extends StatefulWidget {
  @override
  _BakeryyState createState() => _BakeryyState();
}

class _BakeryyState extends State<Bakeryy> {
  final db = FirebaseFirestore.instance;
  List<dynamic> tagList = <dynamic>[];
  CollectionReference customer =
      FirebaseFirestore.instance.collection("customerinfo");
  final User user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PRODUCTS'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              customer.doc(user.uid).update({
                "cartItems": tagList,
              });
            },
          )
        ],
      ),
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: db.collection('Bakery').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            } else {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot ds = snapshot.data.docs[index];
                            // getusername2(ds.data()['authorId']);
                            // getusername1(ds.data()['authorId']);

                            return buildItem(ds, index + 1);
                          }),
                    ),
                  ]);
            }
          },
        ),
      ),
    );
  }

  buildItem(DocumentSnapshot doc, int index) {
    final User user = FirebaseAuth.instance.currentUser;
    CollectionReference customer = FirebaseFirestore.instance
        .collection("customerinfo/${user.uid}/cartItems");
    final height1 = MediaQuery.of(context).size.height;
    final width1 = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height1 * 0.01, left: width1 * 0.04, right: width1 * 0.03),
      height: height1 * 0.26,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width1 * 0.06)),
        elevation: 3,
        child: Stack(
          children: [
            Positioned(
              top: height1 * 0.04,
              left: width1 * 0.04,
              child: CircleAvatar(
                radius: width1 * 0.15,
                backgroundImage: AssetImage(doc.data()['imgUrl']),
              ),
            ),
            Positioned(
                top: height1 * 0.015,
                left: width1 * 0.06,
                child: Text(
                  '${index.toString()}.',
                  style: TextStyle(
                    fontSize: width1 * 0.04,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF455A64),
                  ),
                )),
            Positioned(
                top: height1 * 0.15,
                left: width1 * 0.4,
                child: Text(
                  'Price: ${doc.data()['Price']}',
                  style: TextStyle(
                    fontSize: width1 * 0.04,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF455A64),
                  ),
                )),
            Positioned(
                top: height1 * 0.047,
                left: width1 * 0.4,
                child: Text(
                  doc.data()['Name'],
                  style: TextStyle(
                    fontSize: width1 * 0.07,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF455A64),
                  ),
                )),
            Positioned(
              top: height1 * 0.02,
              right: width1 * 0.075,
              child: InkWell(
                onTap: () {
                  //tagList.add({
                  //'itemname': doc.data()['name'],
                  // 'itemprice': doc.data()['price'],
                  // "itemquantity": doc.data()['quantity']
                  //});
                  customer.doc().set({
                    "cartItems": [
                      {
                        'itemname': doc.data()['Name'],
                        'itemprice': doc.data()['Price'],
                        'itemquantity': doc.data()['Quantity'],
                      }
                    ],
                  });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
            Positioned(
              top: height1 * 0.18,
              right: width1 * 0.075,
              child: InkWell(
                onTap: () {
                  //tagList.add({
                  //'itemname': doc.data()['name'],
                  // 'itemprice': doc.data()['price'],
                  // "itemquantity": doc.data()['quantity']
                  //});
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Feedbacks();
                    }),
                  );
                },
                child: Icon(
                  Icons.feedback,
                ),
              ),
            ),
            Positioned(
              top: height1 * 0.055,
              right: width1 * 0.03,
              child: Text(
                "Add to cart",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: width1 * 0.03,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF455A64),
                ),
              ),
            ),
            Positioned(
                top: height1 * 0.1,
                right: width1 * 0.07,
                bottom: height1 * 0.06,
                left: width1 * 0.4,
                child: Text(
                  'quantity left: ${doc.data()['Quantity']}',
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: width1 * 0.035,
                    color: Color(0xFF455A64),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
