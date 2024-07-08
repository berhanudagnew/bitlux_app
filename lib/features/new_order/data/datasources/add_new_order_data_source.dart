import 'package:flutter/material.dart';

import '../models/add_new_order_model.dart';

abstract class AddNewOrderDataSource {
  Future<void> addNewOrder(
      AddNewOrderModel addNewOrderModel, BuildContext context);
}
