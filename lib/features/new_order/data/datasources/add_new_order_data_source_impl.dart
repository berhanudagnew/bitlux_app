import 'package:bitlux_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';
import 'add_new_order_data_source.dart';
import '../models/add_new_order_model.dart';

class AddNewOrderDataSourceImpl implements AddNewOrderDataSource {
  final Dio dio;
  final String baseUrl = 'http://192.168.215.178:3000';

  AddNewOrderDataSourceImpl(this.dio);

  @override
  Future<void> addNewOrder(AddNewOrderModel addNewOrderModel) async {
    final response = await dio.post(
      '$baseUrl/new-order',
      data: addNewOrderModel.toJson(),
    );
    print('response.body: ${response.data}');

    if (response.statusCode != 201) {
      final responseBody = response.data;
      throw ServerException(
          errorMessage:
              "Failed to create order. Status code: ${response.statusCode}, Response body: $responseBody");
    }
  }
}
