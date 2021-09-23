import 'package:assignment/authentication.dart';
import 'package:assignment/screens/login_screen.dart';
import 'package:assignment/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        SignUp.routename: (ctx) => SignUp(),
        LoginScreen.routename: (ctx) => LoginScreen(),
        HomeScreen.routename: (ctx) => HomeScreen(),
      },
    );
  }
}
