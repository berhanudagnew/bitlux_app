import 'package:flutter/material.dart';

import '../entities/add_new_order_entity.dart';
import '../repository/add_new_order_repository.dart';

class GetNewOrderUsecase {
  final AddNewOrderRepository addNewOrderRepository;

  GetNewOrderUsecase(this.addNewOrderRepository);

  Future<void> execute(
      AddNewOrderEntity addNewOrderEntity, BuildContext context) async {
    return await addNewOrderRepository.addNewOrder(addNewOrderEntity, context);
  }
}
