import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListTile(
        title: Text('Place Order'),
        onTap: () {
          // Update the state of the app.
          // ...
          Navigator.pop(context);
        },
      ),
    ));
  }
}
