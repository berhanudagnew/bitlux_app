import 'package:bitlux_app/env_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'add_new_order_data_source.dart';
import '../models/add_new_order_model.dart';

class AddNewOrderDataSourceImpl implements AddNewOrderDataSource {
  final envProvider = EnvProvider();
  final Dio dio;

  AddNewOrderDataSourceImpl(this.dio);

  @override
  Future<void> addNewOrder(
      AddNewOrderModel addNewOrderModel, BuildContext context) async {
    try {
      final response = await dio.post(
        '${envProvider.envValue}/new-order',
        data: addNewOrderModel.toJson(),
      );
      if (response.statusCode != 201) {
        throw Exception('Failed to Create Order: ${response.statusCode}');
      }
    } on DioException catch (e) {
      String errorMessage = 'Request DIO failed: ${e.message}';
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'Request timed out';
      } else {
        throw Exception('Failed to connect DB: $errorMessage');
      }
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}
