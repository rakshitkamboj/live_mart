import 'package:flutter/material.dart';

class Feedbacks extends StatefulWidget {
  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit Your Feedback"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: height1 * 0.07),
          height: height1 * 0.58,
          width: double.maxFinite,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width1 * 0.06)),
            elevation: 1,
            child: Stack(
              children: [
                Positioned(
                  child: Text("Content",
                      style: TextStyle(
                        fontSize: width1 * 0.05,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        color: Color(0xFF455A64),
                      )),
                  top: height1 * 0.020,
                  left: width1 * 0.058,
                ),
                Positioned(
                  child: Container(
                    height: height1 * 0.45,
                    child: TextFormField(
                      maxLines: 14,
                      decoration: InputDecoration(
                          hintText: "Enter Your Feedback",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF455A64)),
                              borderRadius: BorderRadius.circular(0.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF455A64)),
                              borderRadius: BorderRadius.circular(0.0))),
                    ),
                  ),
                  top: height1 * 0.07,
                  left: width1 * 0.058,
                  right: width1 * 0.058,
                ),
                Positioned(
                  top: height1 * 0.388,
                  left: width1 * 0.00001,
                  right: width1 * 0.058,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, left: 40),
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
                                    "Your Response is Recorded",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ));
                      },
                      child: Container(
                        width: 85.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.purple,
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
