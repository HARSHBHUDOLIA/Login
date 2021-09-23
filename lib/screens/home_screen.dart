import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routename = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('This is My Home Screen'),
      ),
    );
  }
}
