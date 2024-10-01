import 'package:flutter/material.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';

import 'picker.dart';


class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final controller = MultiImagePickerController(
      maxImages: 10,
      picker: (allowMultiple) async {
        return await pickImagesUsingImagePicker(allowMultiple);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 32),
          Expanded(
            child: MultiImagePickerView(
              controller: controller,
              padding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Multi Image Picker View'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              controller.pickImages();
            },
          ),
          IconButton(
            icon: const Icon(Icons.upload),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(controller.images.toString())));
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}