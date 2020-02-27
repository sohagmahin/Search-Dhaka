import 'package:flutter/material.dart';

class ShoppingMalls extends StatelessWidget {
  static const routeName = '/shopping_mall/shopping_malls';
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
