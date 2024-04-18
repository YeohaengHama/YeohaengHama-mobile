import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/user_provider.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/diary/f_my_diary.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/review/f_my_review.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/itnierary/f_my_itnerary.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../fab/w_floating_daangn_button.dart';



class MyTripScreen extends ConsumerStatefulWidget {
  const MyTripScreen({super.key});

  @override
  ConsumerState<MyTripScreen> createState() => _MyTripScreenState();
}

class _MyTripScreenState extends ConsumerState<MyTripScreen> with SingleTickerProviderStateMixin{

  late final tabController = TabController(length: 3, vsync: this);
  int currentIndex = 0;

  Widget build(BuildContext context) {
    final accountNotifier = ref.read(accountProvider.notifier).state!;

    return  Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // 뒤로 가기 기능 구현
          },
        ),

      ),
      body: Stack(
        children: [

          Column(
          children: [
            Center(
              child: accountNotifier.photoUrl != null
                  ? ClipOval(
                child: CachedNetworkImage(
                  imageUrl: accountNotifier.photoUrl!,
                  height: 120,
                ),
              )
                  : ClipOval(
                child: Image.asset(
                  '$basePath/icon/colorHama.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),

            Center(child: '${accountNotifier.nickName}'.text.color(AppColors.primaryGrey).size(24).bold.make()),
            tabBar,
            FutureBuilder<Widget>(
              future: switchTabFragment(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return snapshot.data ?? CircularProgressIndicator();
                } else {
                  return CircularProgressIndicator(); // 로딩 중 표시
                }
              },
            ),

          ],
        ),
          Positioned(
            bottom: 95.0,
            right: 0,
            child: FloatingDaangnButton(), // 여기에 FloatingDaangnButton 추가
          ),
    ]
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
          '내 여행'.text.make(),
          '리뷰'.text.make(),
          '여행일기'.text.make(),
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

