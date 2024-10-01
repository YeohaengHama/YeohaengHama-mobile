
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_hama_area.dart';
import 'package:flutter/material.dart';

class HamaAreaHolder extends StatelessWidget {
  const HamaAreaHolder({
    super.key,
    required this.areaSize,
    required List<String> areaList,
  }) : _areaList = areaList;

  final double areaSize;
  final List<String> _areaList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: areaSize + areaSize + 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (_areaList.length / 2).ceil(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (index * 2 < _areaList.length)
                SizedBox(
                  width: areaSize,
                  height: areaSize,
                  child: HamaAreaWidget(
                    areaList[index * 2],
                    indexInList: index * 2 + 1,
                  ),
                ).p(5),
              if (index * 2 + 1 < _areaList.length)
                SizedBox(
                  width: areaSize,
                  height: areaSize,
                  child: HamaAreaWidget(
                    areaList[index * 2 + 1],
                    indexInList: index * 2 + 2,
                  ),
                ).p(5),
            ],
          );
        },
      ),
    );
  }
}