import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:live_mart/Retailer/HomeScreenR.dart';
import 'package:live_mart/Wholesaler/otpW.dart';
import 'HomeScreenW.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInW extends StatefulWidget {
  @override
  _SignInWState createState() => _SignInWState();
}

class _SignInWState extends State<SignInW> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _signInWithEmailAndPassword() async {
    final User user = (await _auth.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return HomeScreenW();
      }),
    );
  }

  GoogleSignIn _googleSignIn = GoogleSignIn();

  bool isUserSignedIn = false;

  void checkIfUserIsSignedIn() async {
    var userSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = userSignedIn;
    });
  }

  Future<User> _handleSignIn() async {
    // hold the instance of the authenticated user
    User user;
    // flag to check whether we're signed in already
    bool isSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = isSignedIn;
    });
    if (isSignedIn) {
      // if so, return the current user
      user = _auth.currentUser;
    } else {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      // get the credentials to (access / id token)
      // to sign in via Firebase Authentication
      final AuthCredential credential = GoogleAuthProvider.getCredential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      user = (await _auth.signInWithCredential(credential)).user;
      isSignedIn = await _googleSignIn.isSignedIn();
      setState(() {
        isUserSignedIn = isSignedIn;
      });
    }

    return user;
  }

  void onGoogleSignIn(BuildContext context) async {
    User user = await _handleSignIn();
    var userSignedIn = Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreenW()));
    setState(() {
      isUserSignedIn = userSignedIn == null ? true : false;
    });
  }

  //////////END//////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 150),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: const Text('sign in with email and password'),
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
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
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _signInWithEmailAndPassword();
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    _success == null
                        ? ''
                        : (_success
                            ? 'Successfully signed in ' + _userEmail
                            : 'Sign in failed'),
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onGoogleSignIn(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Or Login Via Google",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return OtpW();
                      }),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Or Login Via Otp",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
