import 'package:flutter/material.dart';

import 'modal_bottom_sheet.dart';

void showDatePickerDialog(BuildContext context, Widget body) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return BottomDialog(body: body);
    },
  );
}