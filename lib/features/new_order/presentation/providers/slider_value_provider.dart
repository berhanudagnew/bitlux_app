import 'package:flutter/material.dart';

class SliderValueProvider extends ChangeNotifier {
  double sliderValue;
  double totalAmount;

  SliderValueProvider({
    this.sliderValue = 0,
    this.totalAmount = 100,
  });

  void changeSliderValue(double newValue) {
    sliderValue = newValue;
    notifyListeners();
  }
}
