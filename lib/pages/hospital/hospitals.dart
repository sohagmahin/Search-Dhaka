import 'package:flutter/material.dart';

class Hospitals extends StatelessWidget {
  static const routeName = '/hospital/hospitalsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitals'),
      ),
      body: Center(
        child: Text('This is hospitals page!'),
      ),
    );
  }
}
