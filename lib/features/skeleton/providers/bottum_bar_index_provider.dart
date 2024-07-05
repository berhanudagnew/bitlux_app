import 'package:flutter/material.dart';

class BottumBarIndexProvider extends ChangeNotifier {
  int selectedPage;

  BottumBarIndexProvider({
    this.selectedPage = 0,
  });

  void changePage(int newValue) {
    selectedPage = newValue;
    notifyListeners();
  }
}
