import 'package:flutter/material.dart';

class KConstant {
 static Gradient buildGradient({Color firstColor, Color secondColor}) {
    return LinearGradient(
        colors: [firstColor, secondColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.8]);
  }
}
