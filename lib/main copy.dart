import 'dart:async';
import 'package:bitlux_app/core/common/widgets/error_pages/error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:bitlux_app/features/balance/presentation/providers/balance_board_provider.dart';
import 'package:bitlux_app/features/new_order/presentation/providers/slider_value_provider.dart';
import 'package:bitlux_app/features/skeleton/providers/bottum_bar_index_provider.dart';
import 'package:bitlux_app/features/skeleton/skeleton.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:bitlux_app/features/new_order/data/datasources/add_new_order_data_source_impl.dart';
import 'package:bitlux_app/features/new_order/data/repository/add_new_order_repository_impl.dart';
import 'package:bitlux_app/features/new_order/business/usecases/get_new_order_usecase.dart';
import 'package:bitlux_app/features/new_order/presentation/providers/add_new_order_provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    runApp(CustomErrorWidgetPage(errorMessage: details.exceptionAsString()));
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final addNewOrderDataSource = AddNewOrderDataSourceImpl(dio);
    final addNewOrderRepository =
        AddNewOrderRepositoryImpl(addNewOrderDataSource);
    final addNewOrderUseCase = GetNewOrderUsecase(addNewOrderRepository);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottumBarIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BalanceBoardProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderValueProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddNewOrderProvider(addNewOrderUseCase),
        ),
      ],
      child: MaterialApp(
        // showPerformanceOverlay: true,
        debugShowCheckedModeBanner: false,
        home: const Skeleton(),
        onGenerateRoute: (settings) {
          if (settings.name == '/error') {
            final errorMessage = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) {
                return CustomErrorWidgetPage(errorMessage: errorMessage);
              },
            );
          }
          // Other routes...
          return null;
        },
      ),
    );
  }
}
