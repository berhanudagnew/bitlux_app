import 'package:flutter/material.dart';
import '../../business/entities/add_new_order_entity.dart';
import '../../business/usecases/get_new_order_usecase.dart';

class AddNewOrderProvider with ChangeNotifier {
  final GetNewOrderUsecase getNewOrderUsecase;

  AddNewOrderProvider(this.getNewOrderUsecase);

  Future<void> createOrder(AddNewOrderEntity addNewOrderEntity) async {
    await getNewOrderUsecase.execute(addNewOrderEntity);
    notifyListeners();
  }
}
