import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/wallet/s_dutch_treat.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/theme/text_size.dart';
import '../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../search/s_space_search.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen(this.itinerary, {super.key});

  final CheckItinerary itinerary;

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
          slivers: [
          SliverAppBar(
          floating: false,
          pinned: true,
          backgroundColor: Colors.white, elevation: 0,
          scrolledUnderElevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          '가계부'.text.bold.size(titleSize).make(),
          '${widget.itinerary.name}'.text.size(titleSize-2).color(AppColors.thirdGrey).make()
          ]

      ),
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // 뒤로가기 버튼 클릭 시 동작
            Nav.pop(context);
          }),
      actions: [
        IconButton(onPressed: () {
          Nav.push(DutchTreatScreen());
        }, icon: const Icon(Icons.percent_rounded)), //Colock Loader 10
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.list)),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
        children: [
          Container(width: 200,height: 700,)
        ],
        )
        )
        // 다른 SliverAppBar 구성 추가 가능
      ],
    ),);
  }
}
