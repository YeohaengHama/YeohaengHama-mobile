import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/main/tab/meeting/f_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingFragment extends StatelessWidget {
  const MeetingFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '앱바'.text.make(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();  // 뒤로 가기 기능 구현
          },
        ),
      ),
      body:

      Column(
        children: [
          Height(100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedContainer(
                borderColor: Colors.green,
                borderWidth: 10,
                child: Container(
                  width: 100,
                  height: 200,
                  color: AppColors.mainPurple,
                    child:
                '비밀번호찾기'.text.make()),
              ),
              RoundedContainer(
                borderColor: Colors.green,
                borderWidth: 10,
                child: Container(
                    width: 100,
                    height: 200,
                    color: AppColors.mainPurple,
                    child:
                    '비밀번호찾기'.text.make()),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedContainer(
                borderColor: Colors.green,
                borderWidth: 10,
                child: Container(
                    width: 100,
                    height: 200,
                    color: AppColors.mainPurple,
                    child:
                    '비밀번호찾기'.text.make()),
              ),
              Expanded(
                child: RoundedContainer(
                  borderColor: Colors.green,
                  borderWidth: 10,
                  child: Container(
                      width: 100,
                      height: 200,
                      color: AppColors.mainPurple,
                      child:
                      '비밀번호찾기'.text.make()),
                ),
              ),
            ],
          ),
          Tap(
            onTap: () {
              Nav.push(PageFragment());
            },
            child: RoundedContainer(
              borderColor: Colors.green,
              borderWidth: 10,
              child: Container(
                  width: 100,
                  height: 20,
                  color: AppColors.mainPurple,
                  child:
                  '이동'.text.make()),
            ).pOnly(top: 10),
          ),
        ],
      ),
    );
  }
}
