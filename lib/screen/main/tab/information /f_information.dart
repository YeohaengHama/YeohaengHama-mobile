import 'package:flutter/material.dart';

import '../../../post_detail/w_map.dart';

class InformationFragment extends StatefulWidget {
  const InformationFragment({super.key});

  @override
  State<InformationFragment> createState() => _InformationFragmentState();
}

class _InformationFragmentState extends State<InformationFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MapWidget(),
    );
  }
}
