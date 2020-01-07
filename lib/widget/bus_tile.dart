import 'package:flutter/material.dart';
import '../pages/bus_details.dart';

class BusTile extends StatelessWidget {

  final String name;
  final String type;
  final String source;
  final String destination;
  BusTile({this.name,this.type,this.source,this.destination});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: Icon(Icons.directions_bus),
      trailing: Text(type),
      subtitle: Text(source + ' - ' + destination),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => BusDetails()));
      },
    );
  }
}
