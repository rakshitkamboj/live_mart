import 'package:flutter/material.dart';
import 'package:live_mart/Retailer/Screens/Feedbacks.dart';

class SearchAppBarDelegate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: _SearchAppBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class _SearchAppBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          close(context, null);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
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
                backgroundImage: AssetImage("Images/cheese.jpg"),
              ),
            ),
            Positioned(
                top: height1 * 0.015,
                left: width1 * 0.06,
                child: Text(
                  '1.',
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
                  'Price: 120',
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
                  query,
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
                  'quantity left: 20',
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

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Item> items = [
      Item(title: 'apple'),
      Item(title: 'mango'),
      Item(title: 'banana'),
      Item(title: 'pineapple'),
      Item(title: 'orange'),
      Item(title: 'oranges'),
    ];
    List<Item> suggestionList = query.isEmpty
        ? items
        : items.where((element) => element.title.startsWith(query)).toList();
    return suggestionList.isEmpty
        ? Text("no result found")
        : ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(suggestionList[index].title),
                onTap: () {
                  showResults(context);
                },
              );
            },
            itemCount: suggestionList.length,
          );
  }
}

class Item {
  final String title;

  Item({@required this.title});
}

List<Item> items = [
  Item(title: 'apple'),
  Item(title: 'mango'),
  Item(title: 'banana'),
  Item(title: 'pineapple'),
  Item(title: 'orange'),
  Item(title: 'oranges'),
];
