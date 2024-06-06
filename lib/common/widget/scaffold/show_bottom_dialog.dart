import 'package:flutter/material.dart';

import 'modal_bottom_sheet.dart';

void ShowBottomDialog(BuildContext context, Widget body) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return BottomDialog(body: body);
    },
  );
}