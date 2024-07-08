import 'package:bitlux_app/features/new_order/data/models/add_new_order_model.dart';
import 'package:flutter/material.dart';
import '../../business/entities/add_new_order_entity.dart';
import '../../business/repository/add_new_order_repository.dart';
import '../datasources/add_new_order_data_source.dart';

class AddNewOrderRepositoryImpl implements AddNewOrderRepository {
  final AddNewOrderDataSource addNewOrderDataSource;

  AddNewOrderRepositoryImpl(this.addNewOrderDataSource);

  @override
  Future<void> addNewOrder(
      AddNewOrderEntity addNewOrderEntity, BuildContext context) async {
    final addNewOrderModel = AddNewOrderModel(
      streamName: addNewOrderEntity.streamName,
      orderType: addNewOrderEntity.orderType,
      orderSide: addNewOrderEntity.orderSide,
      symbol: addNewOrderEntity.symbol,
      orderQuantity: addNewOrderEntity.orderQuantity,
      orderPrice: addNewOrderEntity.orderPrice,
    );

    await addNewOrderDataSource.addNewOrder(addNewOrderModel, context);
  }
}
