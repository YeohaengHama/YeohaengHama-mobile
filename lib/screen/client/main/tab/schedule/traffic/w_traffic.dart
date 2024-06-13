import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_TransportationDropdown.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_transportation_dropdown_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';

class TrafficWidget extends StatefulWidget {
  const TrafficWidget({super.key});

  @override
  State<TrafficWidget> createState() => _TrafficWidgetState();
}

class _TrafficWidgetState extends State<TrafficWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TransportationDropdown(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            RoundedContainer(
              borderColor: AppColors.outline,
              borderWidth: 2.5,
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
              radius: 10,
              child: Container(
                alignment: Alignment.center,
                height: 15,
                child: Text(
                  '거리',
                  style: TextStyle(
                      color: AppColors.primaryGrey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ).pSymmetric(v: 0),
              ).pSymmetric(h: 2),
            ),
                '를 클릭하면 교통편을 확인 할 수 있습니다.'.text.size(8).color(AppColors.secondGrey).bold.make()
          ]),


        ],
      ),
    );
  }
}
