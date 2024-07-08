import 'package:flutter/material.dart';
import '../../business/entities/add_new_order_entity.dart';
import '../../business/usecases/get_new_order_usecase.dart';

class AddNewOrderProvider with ChangeNotifier {
  final GetNewOrderUsecase getNewOrderUsecase;

  AddNewOrderProvider(this.getNewOrderUsecase);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<String?> createOrder(
      AddNewOrderEntity addNewOrderEntity, BuildContext context) async {
    _setLoading(true);
    try {
      await getNewOrderUsecase.execute(addNewOrderEntity, context);
      notifyListeners();
      _setLoading(false);
      return null;
    } catch (e) {
      _setLoading(false);
      return e.toString();
    }
  }

  void _setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
