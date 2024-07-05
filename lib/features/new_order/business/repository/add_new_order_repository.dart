import '../entities/add_new_order_entity.dart';

abstract class AddNewOrderRepository {
  Future<void> addNewOrder(AddNewOrderEntity addNewOrderEntity);
}
