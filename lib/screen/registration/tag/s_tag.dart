import 'package:fast_app_base/screen/registration/tag/w_tag_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/common/common.dart';

import '../pick/s_area_pick.dart';

class TagScreen extends StatefulWidget {
  const TagScreen({super.key});

  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  final List<String> whoTag =  ['혼자', '친구와', '연인과', '배우자와', '아이와', '부모님과', '기타'];
  final List<String> styleTag =  ['체험∙액티비티', 'SNS 핫플레이스', '자연과 함께', '유명한 관광지는 필수', '여유롭게 힐링', '문화∙예술∙역사', '여행지 느낌 물씬', '쇼핑은 열정적으로', '관광보다 먹방'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            '어떤 스타일의\n여행을 할 계획인가요?'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(24)
                .make(),
            const SizedBox(height: 50),
            '누구와'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(15)
                .make(),
            const SizedBox(height: 16),
            TagButton(whoTag: whoTag),
            const SizedBox(height: 16),

            '누구와'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(15)
                .make(),
            TagButton(styleTag: styleTag),
            const Height(80),
          ],).pOnly(left: contentLeftPadding),


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
          const Height(12),
          Center(child: '다음에 하기'.text.underline.bold.color(AppColors.secondGrey).make()),

        ],
      ),
    );
  }
}
