import 'package:flutter/material.dart';

class Place {
  final String name;
  final String location;
  final String description;
  final String featureImageUrl;
  final List<String> imageList;
  final Map visitingTime;
  final Color startColor;
  final Color endColor;
  final Color iconColor;
  final Color shadowColor;
  Place({
    @required this.name,
    this.location,
    @required this.description,
    @required this.featureImageUrl,
    @required this.visitingTime,
    this.imageList,
    this.startColor,
    this.endColor,
    this.iconColor,
    this.shadowColor,
  });
}
