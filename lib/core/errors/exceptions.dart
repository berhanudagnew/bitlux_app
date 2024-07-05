class ServerException implements Exception {
  final String errorMessage;
  ServerException({required this.errorMessage}) {
    _logError();
  }

  void _logError() {
    // Log the error message (can be replaced with more sophisticated logging if needed)
    print("ServerException: $errorMessage");
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class CacheException implements Exception {}
