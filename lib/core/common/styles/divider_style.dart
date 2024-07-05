import 'package:flutter/material.dart';
import 'package:bitlux_app/core/constants/colors.dart';

class BitLuxDividerStyle extends StatelessWidget {
  const BitLuxDividerStyle({
    super.key,
    this.height = 1.0,
    this.width = double.infinity,
    this.color = BitLuxColors.grey,
  });
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
