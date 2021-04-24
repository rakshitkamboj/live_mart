import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';

class YourOrders extends StatefulWidget {
  @override
  _YourOrdersState createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final User user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
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
          ],
        ),
      ),
    );
  }
}
