import 'package:assignment/authentication.dart';
import 'package:assignment/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const routename = '/signup';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              RaisedButton(
                onPressed: () async {
                  UserCredential result =
                      await signup(email.text, password.text);
                  if (result != null) {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routename);
                  }
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
