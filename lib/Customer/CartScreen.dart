import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final User user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                                "Your Order Placed",
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                  },
                  child: Text(
                    'Place Order',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream:
              db.collection('customerinfo/${user.uid}/cartItems').snapshots(),
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

                            return buildcart(ds);
                          }),
                    ),
                  ]);
            }
          },
        ),
      ),
    );
  }

  buildcart(DocumentSnapshot doc) {
    CollectionReference customer =
        FirebaseFirestore.instance.collection("customerinfo");
    final User user = FirebaseAuth.instance.currentUser;
    final height1 = MediaQuery.of(context).size.height;
    final width1 = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: height1 * 0.01, left: width1 * 0.04, right: width1 * 0.03),
      height: height1 * 0.15,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width1 * 0.06)),
        elevation: 3,
        child: Stack(
          children: [
            Positioned(
                top: height1 * 0.045,
                left: width1 * 0.06,
                child: Text(
                  doc.data()['cartItems'][0]['itemname'],
                  style: TextStyle(
                    fontSize: width1 * 0.06,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF455A64),
                  ),
                )),
            Positioned(
                top: height1 * 0.05,
                left: width1 * 0.4,
                child: Text(
                  'Cost: ${doc.data()["cartItems"][0]["itemprice"]}',
                  style: TextStyle(
                    fontSize: width1 * 0.04,
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
                  //customer.doc(user.uid).update({
                  //"cartItems": [
                  //  {
                  //  'itemname': doc.data()['name'],
                  //  'itemprice': doc.data()['price'],
                  //   'itemquantity': doc.data()['quantity'],
                  // }
                  // ],
                  //});
                },
                child: Icon(
                  Icons.delete,
                ),
              ),
            ),
            Positioned(
              top: height1 * 0.055,
              right: width1 * 0.03,
              child: Text(
                "Remove from cart",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: width1 * 0.03,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF455A64),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
