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
          child: Text('No Bus Available!'),
        ),
        builder: (context, busListData, ch) {
          return !busListData.result
              ? Center(child: Text('Turn On your internet Connection\n For\n First Time!',textAlign: TextAlign.center,),)
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
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: BusTile(
                                  name: busListData.selectedBusList[index].name,
                                  type: busListData.selectedBusList[index].type,
                                  source: busListData
                                      .selectedBusList[index].sourceName,
                                  destination: busListData
                                      .selectedBusList[index].destinationName,
                                  stopageList: busListData
                                      .selectedBusList[index].stopageList,
                                ),
                              ),
                            );
                          });
        });
  }
}
