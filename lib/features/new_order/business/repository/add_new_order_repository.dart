import 'package:flutter/material.dart';

import '../entities/add_new_order_entity.dart';

abstract class AddNewOrderRepository {
  Future<void> addNewOrder(
      AddNewOrderEntity addNewOrderEntity, BuildContext context);
}
