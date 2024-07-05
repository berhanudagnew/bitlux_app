import 'package:flutter/material.dart';
import 'package:bitlux_app/core/constants/colors.dart';

/// A customizable card widget with optional child, border, and styling.
class BitLuxRoundCard extends StatelessWidget {
  /// Create a custom card.
  ///
  /// Parameters:
  ///   - child: The optional child widget to be placed inside the card.
  ///   - margin: The margin around the card.
  ///   - padding: The padding inside the card.
  ///   - width: The width of the card.
  ///   - height: The height of the card.
  ///   - borderRadius: The border radius of the card.
  ///   - showBorder: Whether to show a border around the card.
  ///   - backgroundColor: The background color of the card.
  ///   - borderColor: The color of the border (if [showBorder] is true).
  const BitLuxRoundCard({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.width,
    this.height,
    required this.borderRadius,
    this.showBorder = true,
    this.backgroundColor = BitLuxColors.white,
    this.borderColor = BitLuxColors.borderPrimary,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: showBorder
            ? Border(
                left: BorderSide(width: 0, color: borderColor),
                right: BorderSide(width: 0, color: borderColor),
                top: BorderSide(width: 0, color: borderColor),
                bottom: BorderSide(width: 0, color: borderColor))
            : null,
      ),
      child: child,
    );
  }
}
