import 'custom_error_widget_page.dart';
import 'package:flutter/material.dart';

class ErrorWidgetClass extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const ErrorWidgetClass(this.errorDetails, {super.key});
  @override
  Widget build(BuildContext context) {
    return CustomErrorWidgetPage(
      errorMessage: errorDetails.exceptionAsString(),
    );
  }
}
