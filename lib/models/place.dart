import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/models/location.dart';

class Place {
  final String name;
  final String address;
  final String description;
  final Location location;
  final String featureImageUrl;
  final List<String> imageList;
  final Map visitingTime;
  final Color startColor;
  final Color endColor;
  final Color iconColor;
  final Color shadowColor;
  Place({
    @required this.name,
    this.address,
    @required this.description,
    this.location,
    @required this.featureImageUrl,
    @required this.visitingTime,
    this.imageList,
    this.startColor,
    this.endColor,
    this.iconColor,
    this.shadowColor,
  });
}
