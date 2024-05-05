
import 'package:flutter/material.dart';

import 'custom/defalut_custom.dart';
import 'custom/file_custom.dart';
import 'custom/full_custom.dart';
import 'custom/selectable_custom.dart';

enum CustomExamples {
  fullCustom,
  defaultCustom,
  selectableCustom,
  filesCustom;

  String get name {
    switch (this) {
      case CustomExamples.fullCustom:
        return "Full Custom";
      case CustomExamples.defaultCustom:
        return "Default Custom";
      case CustomExamples.selectableCustom:
        return "Selectable Images";
      case CustomExamples.filesCustom:
        return "File Picker";
    }
  }

  Widget builder(BuildContext context) {
    switch (this) {
      case CustomExamples.fullCustom:
        return const FullCustomExample();
      case CustomExamples.defaultCustom:
        return const DefaultCustomExample();
      case CustomExamples.selectableCustom:
        return const SelectableCustomExample();
      case CustomExamples.filesCustom:
        return const FilesCustomExample();
    }
  }
}

class CustomExamplesWidget extends StatelessWidget {
  const CustomExamplesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Custom Examples:',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: CustomExamples.values
                .map((e) => ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: e.builder));
              },
              child: Text(e.name),
            ))
                .toList(),
          )
        ],
      ),
    );
  }
}