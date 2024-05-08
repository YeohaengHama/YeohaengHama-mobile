import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class DutchTreatScreen extends StatefulWidget {
  const DutchTreatScreen({super.key});

  @override
  State<DutchTreatScreen> createState() => _DutchTreatScreenState();
}

class _DutchTreatScreenState extends State<DutchTreatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(onPressed: () {Nav.pop(context);},
        icon: Icon(Icons.close),
      ),
      ),
    );
  }
}
