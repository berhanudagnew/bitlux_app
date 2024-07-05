import 'package:flutter/material.dart';

class BottumNavigationBarModel {
  final Widget page;
  final GlobalKey<NavigatorState> buttomNavigationKey;

  BottumNavigationBarModel({
    required this.page,
    required this.buttomNavigationKey,
  });
}
