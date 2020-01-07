import 'package:flutter/material.dart';
import '../constant.dart';
import '../widget/bus_tile.dart';

class BusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: KConstant.buildGradient(
              firstColor: Colors.indigo, secondColor: Colors.lightGreenAccent),
        ),
      //color: Colors.white70,
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return BusTile(
              name: '7 No Bus',
              type: 'Local',
              source: 'Gabtoli',
              destination: 'Zatrabari',
            );
          }),
    );
  }
}
