import 'package:flutter/material.dart';

class BitLuxBorderRadius {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  BitLuxBorderRadius(
      this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);

  BorderRadius get borderRadius {
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    );
  }
}
