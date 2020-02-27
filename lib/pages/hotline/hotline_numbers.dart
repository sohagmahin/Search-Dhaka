import 'package:flutter/material.dart';

class HotlineNumbers extends StatelessWidget {
  static const routeName = '/hotline/hotline_numbers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotline Number'),),
      body: Center(
        child: Text('This is hotline number page!'),
      ),
    );
  }
}
