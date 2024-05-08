import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/manager/s_user_management.dart';
import 'package:flutter/material.dart';

class ManagerScreen extends StatelessWidget {
  const ManagerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const boxSize = 180.0;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$basePath/icon/hama.png',
              width: 300,
              height: 100,
            ),
            '여행하마 관리자'.text.bold.size(20).color(AppColors.mainPurple).make().pSymmetric(v: 5),
            ElevatedButton(
              onPressed: () {
                Nav.push(UserManagement());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.mainPurple, backgroundColor: AppColors.white, // 텍스트 색상
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // 버튼을 둥글게 만듭니다.
                  side: BorderSide(color: AppColors.mainPurple, width: 1.5),
                ),
                minimumSize: Size(boxSize, boxSize), // 버튼의 최소 크기를 정사각형으로 설정합니다.
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.groups_outlined,
                    size: 40,
                    color: AppColors.mainPurple,
                  ),
                  '사용자 관리'
                      .text
                      .bold
                      .size(20)
                      .color(AppColors.mainPurple)
                      .make(),
                ],
              ),
            ).pSymmetric(v: 10),
            ElevatedButton(
              onPressed: () {
                // 버튼이 클릭되었을 때 수행할 작업을 여기에 추가하세요.
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.mainPurple, backgroundColor: Colors.white, // 텍스트 색상
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // 버튼을 둥글게 만듭니다.
                  side: BorderSide(color: AppColors.mainPurple, width: 1.5),
                ),
                minimumSize: Size(boxSize, boxSize), // 버튼의 최소 크기를 정사각형으로 설정합니다.
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.groups_outlined,
                    size: 40,
                    color: AppColors.mainPurple,
                  ),
                  '게시물 관리'
                      .text
                      .bold
                      .size(20)
                      .color(AppColors.mainPurple)
                      .make(),
                ],
              ),
            ).pOnly(top: 5),
            SizedBox(height: 20), // '로그아웃' 텍스트와의 간격을 설정합니다.
            '로그아웃'
                .text
                .size(15)
                .color(AppColors.thirdGrey)
                .make(),
          ],
        ),
      ),
    );
  }
}
