import 'package:assignment/authentication.dart';
import 'package:assignment/screens/home_screen.dart';
import 'package:assignment/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
                      await login(email.text, password.text);
                  if (result != null) {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routename);
                  }
                },
                child: Text('Login'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignUp.routename);
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
