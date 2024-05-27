import 'package:flutter/services.dart';

class RemoveNumberFormatting extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = removeFormatting(newValue.text);
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  String removeFormatting(String s) {
    return s.replaceAll(',', '');
  }
}
