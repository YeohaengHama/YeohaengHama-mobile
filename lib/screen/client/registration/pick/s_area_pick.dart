import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/client/registration/pick/w_areas.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'area_search_app_bar.dart';

class AreaPick extends StatefulWidget {
  const AreaPick({super.key});


  @override
  State<AreaPick> createState() => _AreaPickState();
}

class _AreaPickState extends State<AreaPick> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AreaSearchAppBar(controller:controller, hintText: '여행, 어디로 떠나시나요?'),
      body: Column(
        children: [
          Expanded(

            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: diaryList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [AreasWidget(areaList[index])],
                  );
                }),
          ),

        ],
      ),
    );
  }
}
