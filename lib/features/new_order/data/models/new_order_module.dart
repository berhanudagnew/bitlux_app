class NewOrderModule {
  final int? id;
  final String streamName;
  // final DateTime? createdAt;
  // final DateTime updatedAt;
  // final String operationType;
  // final String operationStatus;
  // final DateTime operationTime;
  // final DateTime operationUpdateTime;
  final String symbol;
  // final double live24hChangeInPercentage;
  // final double live24hChangeInUSD;
  // final String orderStatus;
  final String orderSide;
  final String orderType;
  // final String orderExpiration;
  final int orderQuantity;
  // final int orderTimeInterval;
  // final double daylyPNLInUSD;
  // final double daylyPNLInPercentage;
  // final double totalPNLInUSD;
  // final double totalPNLInPercentage;
  // final int noOfOrdersExecuted;
  // final int noOfOrdersCancelled;
  // final int noOfOrdersPartiallyExecuted;
  // final int noOfOrdersPartiallyCancelled;
  // final int noOfOrdersRejected;
  // final int noOfOrdersExpired;
  // final int noOfOrdersFailed;
  // final int noOfOrdersCompleted;
  // final int noOfOrdersPending;
  // final int noOfOrdersQueued;
  // final int noOfOrdersSubmitted;
  // final double livePrice;
  final double orderPrice;
  // final double orderFieldPrice;
  // final double futureTradePrice;
  // final double futureRiskLimitPrice;
  // final double currentOrderTradingFee;
  // final double futureOrderTradingFee;
  // final double totalOrderTradingFee;
  // final double buyRiskLimit;
  // final double sellRiskLimit;
  // final double masterRiskLimit;
  // final double highRiskLimit;
  // final double profitRiskLimit;
  // final String algoTradeStatus;
  // final double algoTradeCurrentSide;
  // final double algoTradeNextSide;

  NewOrderModule({
    this.id,
    required this.streamName,
    // this.createdAt,
    // required this.updatedAt,
    // required this.operationType,
    // required this.operationStatus,
    // required this.operationTime,
    // required this.operationUpdateTime,
    required this.symbol,
    // required this.live24hChangeInPercentage,
    // required this.live24hChangeInUSD,
    // required this.orderStatus,
    required this.orderSide,
    required this.orderType,
    // required this.orderExpiration,
    required this.orderQuantity,
    // required this.orderTimeInterval,
    // required this.daylyPNLInUSD,
    // required this.daylyPNLInPercentage,
    // required this.totalPNLInUSD,
    // required this.totalPNLInPercentage,
    // required this.noOfOrdersExecuted,
    // required this.noOfOrdersCancelled,
    // required this.noOfOrdersPartiallyExecuted,
    // required this.noOfOrdersPartiallyCancelled,
    // required this.noOfOrdersRejected,
    // required this.noOfOrdersExpired,
    // required this.noOfOrdersFailed,
    // required this.noOfOrdersCompleted,
    // required this.noOfOrdersPending,
    // required this.noOfOrdersQueued,
    // required this.noOfOrdersSubmitted,
    // required this.livePrice,
    required this.orderPrice,
    // required this.orderFieldPrice,
    // required this.futureTradePrice,
    // required this.futureRiskLimitPrice,
    // required this.currentOrderTradingFee,
    // required this.futureOrderTradingFee,
    // required this.totalOrderTradingFee,
    // required this.buyRiskLimit,
    // required this.sellRiskLimit,
    // required this.masterRiskLimit,
    // required this.highRiskLimit,
    // required this.profitRiskLimit,
    // required this.algoTradeStatus,
    // required this.algoTradeCurrentSide,
    // required this.algoTradeNextSide,
  });

  factory NewOrderModule.fromJson(Map<String, dynamic> json) {
    return NewOrderModule(
      id: json['id'],
      streamName: json['stream_name'],
      // createdAt: DateTime.parse(json['created_at']),
      // updatedAt: DateTime.parse(json['updated_at']),
      // operationType: json['operation_type'],
      // operationStatus: json['operation_status'],
      // operationTime: DateTime.parse(json['operation_time']),
      // operationUpdateTime: DateTime.parse(json['operation_update_time']),
      symbol: json['symbol'],
      // live24hChangeInPercentage:
      //     (json['live_24h_change_in_percentage'] as num).toDouble(),
      // live24hChangeInUSD: (json['live_24h_change_in_USD'] as num).toDouble(),
      // orderStatus: json['order_status'],
      orderSide: json['order_side'],
      orderType: json['order_type'],
      // orderExpiration: json['order_expiration'],
      orderQuantity: json['order_quantity'],
      // orderTimeInterval: json['order_time_interval'],
      // daylyPNLInUSD: (json['dayly_PNL_in_USD'] as num).toDouble(),
      // daylyPNLInPercentage: (json['dayly_PNL_in_percentage'] as num).toDouble(),
      // totalPNLInUSD: (json['total_PNL_in_USD'] as num).toDouble(),
      // totalPNLInPercentage: (json['total_PNL_in_percentage'] as num).toDouble(),
      // noOfOrdersExecuted: json['no_of_orders_excuted'],
      // noOfOrdersCancelled: json['no_of_orders_cancelled'],
      // noOfOrdersPartiallyExecuted: json['no_of_orders_partially_executed'],
      // noOfOrdersPartiallyCancelled: json['no_of_orders_partially_cancelled'],
      // noOfOrdersRejected: json['no_of_orders_rejected'],
      // noOfOrdersExpired: json['no_of_orders_expired'],
      // noOfOrdersFailed: json['no_of_orders_failed'],
      // noOfOrdersCompleted: json['no_of_orders_completed'],
      // noOfOrdersPending: json['no_of_orders_pending'],
      // noOfOrdersQueued: json['no_of_orders_queued'],
      // noOfOrdersSubmitted: json['no_of_orders_submitted'],
      // livePrice: (json['live_price'] as num).toDouble(),
      orderPrice: (json['order_price'] as num).toDouble(),
      // orderFieldPrice: (json['order_field_price'] as num).toDouble(),
      // futureTradePrice: (json['future_trade_price'] as num).toDouble(),
      // futureRiskLimitPrice: (json['future_risk_limit_price'] as num).toDouble(),
      // currentOrderTradingFee:
      //     (json['current_order_trading_fee'] as num).toDouble(),
      // futureOrderTradingFee:
      //     (json['future_order_trading_fee'] as num).toDouble(),
      // totalOrderTradingFee: (json['total_order_trading_fee'] as num).toDouble(),
      // buyRiskLimit: (json['buy_risk_limit'] as num).toDouble(),
      // sellRiskLimit: (json['sell_risk_limit'] as num).toDouble(),
      // masterRiskLimit: (json['master_risk_limit'] as num).toDouble(),
      // highRiskLimit: (json['high_risk_limit'] as num).toDouble(),
      // profitRiskLimit: (json['profit_risk_limit'] as num).toDouble(),
      // algoTradeStatus: json['algo_trade_status'],
      // algoTradeCurrentSide: (json['algo_trade_current_side'] as num).toDouble(),
      // algoTradeNextSide: (json['algo_trade_next_side'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'stream_name': streamName,
      // 'created_at': createdAt?.toIso8601String(),
      // 'updated_at': updatedAt.toIso8601String(),
      // 'operation_type': operationType,
      // 'operation_status': operationStatus,
      // 'operation_time': operationTime.toIso8601String(),
      // 'operation_update_time': operationUpdateTime.toIso8601String(),
      'symbol': symbol,
      // 'live_24h_change_in_percentage': live24hChangeInPercentage,
      // 'live_24h_change_in_USD': live24hChangeInUSD,
      // 'order_status': orderStatus,
      // 'order_side': orderSide,
      // 'order_type': orderType,
      // 'order_expiration': orderExpiration,
      // 'order_quantity': orderQuantity,
      // 'order_time_interval': orderTimeInterval,
      // 'dayly_PNL_in_USD': daylyPNLInUSD,
      // 'dayly_PNL_in_percentage': daylyPNLInPercentage,
      // 'total_PNL_in_USD': totalPNLInUSD,
      // 'total_PNL_in_percentage': totalPNLInPercentage,
      // 'no_of_orders_excuted': noOfOrdersExecuted,
      // 'no_of_orders_cancelled': noOfOrdersCancelled,
      // 'no_of_orders_partially_executed': noOfOrdersPartiallyExecuted,
      // 'no_of_orders_partially_cancelled': noOfOrdersPartiallyCancelled,
      // 'no_of_orders_rejected': noOfOrdersRejected,
      // 'no_of_orders_expired': noOfOrdersExpired,
      // 'no_of_orders_failed': noOfOrdersFailed,
      // 'no_of_orders_completed': noOfOrdersCompleted,
      // 'no_of_orders_pending': noOfOrdersPending,
      // 'no_of_orders_queued': noOfOrdersQueued,
      // 'no_of_orders_submitted': noOfOrdersSubmitted,
      // 'live_price': livePrice,
      'order_price': orderPrice,
      // 'order_field_price': orderFieldPrice,
      // 'future_trade_price': futureTradePrice,
      // 'future_risk_limit_price': futureRiskLimitPrice,
      // 'current_order_trading_fee': currentOrderTradingFee,
      // 'future_order_trading_fee': futureOrderTradingFee,
      // 'total_order_trading_fee': totalOrderTradingFee,
      // 'buy_risk_limit': buyRiskLimit,
      // 'sell_risk_limit': sellRiskLimit,
      // 'master_risk_limit': masterRiskLimit,
      // 'high_risk_limit': highRiskLimit,
      // 'profit_risk_limit': profitRiskLimit,
      // 'algo_trade_status': algoTradeStatus,
      // 'algo_trade_current_side': algoTradeCurrentSide,
      // 'algo_trade_next_side': algoTradeNextSide,
    };
  }
}
