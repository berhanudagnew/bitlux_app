import '../../business/entities/add_new_order_entity.dart';

class AddNewOrderModel extends AddNewOrderEntity {
  AddNewOrderModel({
    required String streamName,
    required String orderType,
    required String orderSide,
    required String symbol,
    required int orderQuantity,
    required double orderPrice,
  }) : super(
          streamName: streamName,
          orderType: orderType,
          orderSide: orderSide,
          symbol: symbol,
          orderQuantity: orderQuantity,
          orderPrice: orderPrice,
        );

  factory AddNewOrderModel.fromJson(Map<String, dynamic> json) {
    return AddNewOrderModel(
      streamName: json['stream_name'],
      orderType: json['order_type'],
      orderSide: json['order_side'],
      symbol: json['symbol'],
      orderQuantity: json['order_quantity'],
      orderPrice: json['order_price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stream_name': streamName,
      'order_type': orderType,
      'order_side': orderSide,
      'symbol': symbol,
      'order_quantity': orderQuantity,
      'order_price': orderPrice,
    };
  }
}
