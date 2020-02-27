import 'package:flutter/material.dart';
import '../../util/constant.dart';
import '../../widget/bus_tile.dart';
import 'package:provider/provider.dart';
import '../../provider/bus_list_provider.dart';

class AllBusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: KConstant.buildGradient(
            firstColor: Colors.indigo, secondColor: Colors.lightGreenAccent),
      ),
      //color: Colors.white70,
      child: Consumer<BusListProvider>(
          child: Center(
            child: Text('No bus Available!'),
          ),
          builder: (context, busListData, ch) {
            return busListData.allBusCount == 0
                ? ch
                : ListView.builder(
                    itemCount: busListData.allBusCount,
                    itemBuilder: (context, index) {
                      return BusTile(
                        allbus: true,
                        index: index,
                      );
                    });
          }),
    );
  }
}
