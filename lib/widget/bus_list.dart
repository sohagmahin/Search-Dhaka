import 'package:flutter/material.dart';
import 'bus_tile.dart';

class BusList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BusList({this.screenHeight,this.screenWidth});

  @override
  Widget build(BuildContext context) {

    var busTileCardPadding = EdgeInsets.only(
        left: screenWidth * 0.03,
        right: screenWidth * 0.03,
        top: screenHeight * 0.001,
        bottom: screenHeight * 0.01);

    return  ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: busTileCardPadding,
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: BusTile(
                name: '7 No Bus',
                type: 'Local',
                source: 'Gabtoli',
                destination: 'Zatrabari',
              ),
            ),
          );
        });
  }
}
