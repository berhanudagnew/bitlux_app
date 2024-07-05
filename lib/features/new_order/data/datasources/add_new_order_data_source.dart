import '../models/add_new_order_model.dart';

abstract class AddNewOrderDataSource {
  Future<void> addNewOrder(AddNewOrderModel addNewOrderModel);
}
