import 'package:flutter/material.dart';

class BalanceBoardProvider extends ChangeNotifier {
  double spotBalanceUSDT;
  double spotBalanceBNB;
  double todayPNL_USDT;
  double todayPNL_percent;

  BalanceBoardProvider({
    this.spotBalanceUSDT = 2509.75,
    this.spotBalanceBNB = 1618.0,
    this.todayPNL_USDT = 1589.0,
    this.todayPNL_percent = 23.0,
  });

  void updateSpotBalanceUSDT({required spotUSDT}) {
    spotBalanceUSDT = spotUSDT;
    notifyListeners();
  }

  void updateSpotBalanceBNB({required spotBNB}) {
    spotBalanceBNB = spotBNB;
    notifyListeners();
  }

  void updateTodayPNL({required todayPNL}) {
    todayPNL_USDT = todayPNL;
    notifyListeners();
  }

  void updateTodayPNLPercent({required todayPNLPercent}) {
    todayPNL_percent = todayPNLPercent;
    notifyListeners();
  }
}
