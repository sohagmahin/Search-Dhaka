import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body: Center(
        child: Text('This is home page!'),
      ),
    );
  }
}
