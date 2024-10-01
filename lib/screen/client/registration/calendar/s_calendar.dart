import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/registration/calendar/w_range_calendar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalenderScreen extends ConsumerStatefulWidget {
  const CalenderScreen({super.key, this.isEditMode = false });
  final bool isEditMode;
  @override
  ConsumerState<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends ConsumerState<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar은 앱바를 정의합니다.
          SliverAppBar(
            expandedHeight: 130,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Height(55),
                    widget.isEditMode? '여행일정 수정'.text.bold.color(AppColors.primaryGrey).size(20).make() :'여행일정 등록'.text.bold.color(AppColors.primaryGrey).size(20).make(),
                    '일정에 따른 여행 정보를 알려드립니다.'.text.bold.color(AppColors.thirdGrey).size(15).make(),
                  ],
                ).pOnly(left: 30),
              )
            ),
          ),
          // SliverList는 스크롤 가능한 본문을 정의합니다.
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: AppColors.whiteGrey,
                  width: 375,
                  child: RangeCalendar(isEditMode: widget.isEditMode),
                ),
              ],
            ),
          ),
          // SliverToBoxAdapter를 사용하여 고정된 위젯을 추가합니다.

        ],
      ),
    );
  }
}
