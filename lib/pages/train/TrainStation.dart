import 'package:flutter/material.dart';

class TrainStation extends StatelessWidget {
  static const routeName= '/train/trainStation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Train Station'),),
      body: Center(child: Text('This is Train Station Page!'),),
    );
  }
}
