import 'dart:io';
import 'location.dart';

class Bus {
  final String id;
  final String name;
  final String type;
  final List<String> stopageList;
  final File image = null;
  final String sourceName;
  final String destinationName;
  final Location sourceLocation;
  final Location destinationLocation;
  final String pathURL;

  Bus({
    this.id,
    this.name,
    this.type,
    this.stopageList,
    this.sourceName,
    this.destinationName,
    this.sourceLocation,
    this.destinationLocation,
    this.pathURL = '',
  });
}
