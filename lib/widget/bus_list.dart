import 'package:flutter/material.dart';
import 'bus_tile.dart';
import 'package:provider/provider.dart';
import '../provider/bus_list_provider.dart';

class BusList extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BusList({this.screenHeight, this.screenWidth});

  @override
  Widget build(BuildContext context) {
    var busTileCardPadding = EdgeInsets.only(
        left: screenWidth * 0.03,
        right: screenWidth * 0.03,
        top: screenHeight * 0.001,
        bottom: screenHeight * 0.01);

    return Consumer<BusListProvider>(
        child: Center(
          child: Text('No bus available!',style: TextStyle(fontSize: 15),)
        ),
        builder: (context, busListData, ch) {
          return !busListData.result
              ? Center(
                  child: Text(
                    'NEED AN INTERNET CONNECTION\nFOR FIRST TIME!',
                    style: TextStyle(
                        fontFamily: 'ZCOOLQingKeHuangYou',
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                        color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                )
              : busListData.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : busListData.selectedBusCount == 0
                      ? ch
                      : ListView.builder(
                          itemCount: busListData.selectedBusCount,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: busTileCardPadding,
                              child: Container(
                                height: 70.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                          offset: Offset.zero)
                                    ]),
                                child: BusTile(
                                  selectedBus: true,
                                  index: index,
                                ),
                              ),
                            );
                          });
        });
  }
}
