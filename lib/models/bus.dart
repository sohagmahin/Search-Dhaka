import 'dart:io';
import 'location.dart';
class Bus {
  final String name;
  final String type;
  final List<String> stopageList;
  final File image=null;
  final Location source;
  final Location destination;

  Bus({this.name,this.type,this.stopageList,this.source,this.destination});
  
}