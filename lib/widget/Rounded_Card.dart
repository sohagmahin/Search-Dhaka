import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget busChild;
  final double cardHeight;

  RoundedCard({this.busChild, this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: busChild,
      height: cardHeight,
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.yellowAccent, width: 3), // or Colors.grey
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
    );
  }
}
