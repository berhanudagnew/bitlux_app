class AddNewOrderEntity {
  final String streamName;
  final String orderType;
  final String orderSide;
  final String symbol;
  final int orderQuantity;
  final double orderPrice;

  AddNewOrderEntity({
    required this.streamName,
    required this.orderType,
    required this.orderSide,
    required this.symbol,
    required this.orderQuantity,
    required this.orderPrice,
  });
}
