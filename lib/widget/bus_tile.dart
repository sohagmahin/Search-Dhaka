import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/provider/bus_list_provider.dart';
import '../pages/bus_details.dart';
import 'package:provider/provider.dart';

class BusTile extends StatelessWidget {
  final selectedBus;
  final allbus;
  final int index;
  BusTile({
    @required this.index,
    this.allbus = false,
    this.selectedBus = false,
  });

  @override
  Widget build(BuildContext context) {
    var bus;
    if (selectedBus)
      bus = Provider.of<BusListProvider>(context, listen: false)
          .selectedBusList[index];
    if (allbus)
      bus = Provider.of<BusListProvider>(context, listen: false).busList[index];

    return ListTile(
      title: Text(bus.name),
      leading: Image(
        image: AssetImage('assets/images/busIcon.png'),
        fit: BoxFit.cover,
        alignment: Alignment.center,
        height: 40,
        width: 40,

      ),
      trailing: Text(bus.type),
      subtitle: Text(bus.sourceName + ' - ' + bus.destinationName),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BusDetails(
                  busName: bus.name,
                  sourceName: bus.sourceName,
                  destinationName: bus.destinationName,
                  stopageList: bus.stopageList,
                  sourceLocation: bus.sourceLocation,
                  destinationLocation: bus.destinationLocation,
                )));
      },
    );
  }
}
