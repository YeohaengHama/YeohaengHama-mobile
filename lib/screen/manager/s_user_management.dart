import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/account/user_provider.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/review/f_my_review.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import '../../../../../data/network/diary_api.dart';
import '../client/main/menu/my_trip/diary/f_my_diary.dart';
import '../client/main/menu/my_trip/itnierary/f_my_itnerary.dart';



class UserManagement extends ConsumerStatefulWidget {
  const UserManagement({super.key});

  @override
  ConsumerState<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends ConsumerState<UserManagement> with SingleTickerProviderStateMixin{

  late final tabController = TabController(length: 3, vsync: this);
  int currentIndex = 0;

  Widget build(BuildContext context) {
    final accountNotifier = ref.read(accountProvider.notifier).state!;

    return  Scaffold(
      appBar:AppBar(
        title: '게시물 관리'.text.size(16).color(AppColors.primaryGrey).make(),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),

      ),
      body: Column(
        children: [
          Height(10),
          tabBar,
          // FutureBuilder<Widget>(
          //   future: switchTabFragment(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return snapshot.data ?? CircularProgressIndicator();
          //     } else {
          //       return CircularProgressIndicator(); // 로딩 중 표시
          //     }
          //   },
          // ),

        ],
      ),
    );
  }

  Widget get tabBar => Column(
    children: [
      TabBar(
        onTap: (index) {
          // index를 switchTabContent에 전달
          setState(() {
            currentIndex = index;
          });
        },
        labelStyle:
        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelColor: AppColors.primaryGrey,
        controller: tabController,
        indicatorColor: AppColors.mainPurple,
        unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.forthGrey),
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: const EdgeInsets.symmetric(vertical: 5),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        tabs: [
          '여행일기'.text.make(),
          '장소리뷰'.text.make(),
          '댓글'.text.make(),
        ],
      )
    ],
  );

  Future<Widget> switchTabFragment() async {
    switch (currentIndex) {
      case 0:
        return const MyItneraryFragment();
      case 1:
        return const MyReviewFragment();
      case 2:
        return const MyDiaryFragment();
      default:
        return Container(); // Placeholder for default case
    }
  }
}

