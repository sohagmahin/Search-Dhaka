import 'package:flutter/material.dart';

class Universities extends StatelessWidget {

  static const routeName = '/university/universitesPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University'),
      ),
      body: Center(
        child: Text('This is universites Page!'),
      ),
    );
  }
}
