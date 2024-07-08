import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvProvider {
  String get envValue => dotenv.env['BASE_URL'] ?? 'default_value';
}
