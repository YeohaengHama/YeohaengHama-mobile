import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/w_search_app_bar.dart';
import 'package:fast_app_base/screen/registration/pick/w_areas.dart';
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../common/widget/w_height_and_width.dart';
import '../../../common/widget/w_tap.dart';

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
      appBar: SearchAppBar(controller: controller, hintText: '여행, 어디로 떠나시나요?'),
      body: Column(
        children: [
          SizedBox(
            width: maxWidthSize,
            height: 650,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: diaryList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [AreasWidget(areaList[index])],
                  );
                }),
          ),
          Center(
            child: Tap(
              onTap: () { Nav.push(const AreaPick(), context: context); },
              child: RoundedContainer(
                radius: 5,
                backgroundColor: AppColors.mainPurple,
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [


                      '완료'.text.bold.white.make(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
