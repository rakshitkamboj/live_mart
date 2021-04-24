import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'SignInC.dart';

class SignUpC extends StatefulWidget {
  @override
  _SignUpCState createState() => _SignUpCState();
}

class _SignUpCState extends State<SignUpC> {
  CollectionReference customer =
      FirebaseFirestore.instance.collection("customerinfo");
  TextEditingController nameController = TextEditingController();

  TextEditingController confirmpasswordcont = TextEditingController();

  TextEditingController LocationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;
  String _userId;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void _register() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;
    if (user != null) {
      setState(() {
        _userId = user.uid;
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return SignInC();
      }),
    );
    return customer.doc(_userId).set({
      'userName': nameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'location': LocationController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 150),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign Up for Customer',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'UserName'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: confirmpasswordcont,
                    decoration:
                        const InputDecoration(labelText: 'Confirm Password'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: LocationController,
                    decoration: const InputDecoration(labelText: 'Location'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'PhoneNumber'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () async {
                        print("f");
                        if (_formKey.currentState.validate()) {
                          _register();
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    backgroundColor: Colors.black38,
                                    title: Text(
                                      "ERROR",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    content: Text(
                                      "Try again",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ));
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(_success == null
                        ? ''
                        : (_success
                            ? 'Successfully registered ' + _userEmail
                            : 'Registration failed')),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
