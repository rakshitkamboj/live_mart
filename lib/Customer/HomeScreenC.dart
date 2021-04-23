import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreenC extends StatefulWidget {
  @override
  _HomeScreenCState createState() => _HomeScreenCState();
}

class _HomeScreenCState extends State<HomeScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/R0ead639ccf7f5770361c9f547472f1f2?rik=2kMqRA98UXLNew&riu=http%3a%2f%2fsnaplant.com%2fwp-content%2fuploads%2f2016%2f04%2fharvest-vegetables.jpg&ehk=WEvQZ%2fZtDQWzx6wNxvXv020%2bL%2f62fzVTzOE4vsZDZvQ%3d&risl=&pid=ImgRaw"),
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
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP.ytkXzUC4EZjszWGV1C4ULQHaE8?pid=ImgDet&rs=1"),
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
                  Container(
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
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.avenuecalgary.com/wp-content/uploads/2019/09/Lynda-KoreanBakery.jpg"),
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
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
