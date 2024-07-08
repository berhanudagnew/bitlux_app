class Validators {
  static String? numberInputValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some price';
    }
    final number = num.tryParse(value);
    if (number == null) {
      return 'Please enter a valid number';
    }
    return null;
  }
}
