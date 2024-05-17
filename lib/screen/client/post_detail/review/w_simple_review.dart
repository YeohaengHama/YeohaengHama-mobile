import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/review/review_show_all_provider.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_no_review_list.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_simple_rivew_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../common/theme/text_size.dart';
import '../../../../common/widget/scaffold/bottom_dialog_scaffold.dart';
import '../../../../common/widget/w_arrow.dart';
import '../../../../data/network/review_api.dart';
import '../../review/s_review.dart';

class SimpleReviewWidget extends ConsumerStatefulWidget {
  const SimpleReviewWidget(this.id, this.type, {Key? key}) : super(key: key);

  final int id;
  final int type;

  @override
  ConsumerState<SimpleReviewWidget> createState() => _SimpleReviewWidgetState();
}

class _SimpleReviewWidgetState extends ConsumerState<SimpleReviewWidget> {
  bool _photoChecked = false;
  bool _recentTripChecked = false;
  bool _showRecentTripMessage = false; // 메세지 창을 표시할지 여부를 나타내는 변수


  @override
  Widget build(BuildContext context) {
    final review = ref.watch(ReviewShowAllListProvider.notifier).state;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              '리뷰'
                  .text
                  .bold
                  .color(AppColors.primaryGrey)
                  .size(secondTitleSize)
                  .make()
                  .pOnly(right: 5),
              '${review.length}'
                  .text
                  .bold
                  .color(AppColors.mainPurple)
                  .size(secondTitleSize)
                  .make(),
              spacer,
              IconButton(
                onPressed: () {
                  Nav.push(ReviewScreen(widget.id, widget.type));
                },
                icon: const Icon(
                  Icons.edit_note,
                  size: 30,
                ),
              )
            ],
          ),
          Row(
            children: [
              '추천순'
                  .text
                  .bold
                  .color(AppColors.secondGrey)
                  .size(15)
                  .make()
                  .pOnly(right: 5),
              Tap(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const BottomDialogScaffold(
                        body: Column(
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 48,
                              color: Colors.red,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Your message goes here',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Arrow(
                  direction: AxisDirection.down,
                ),
              ),
              spacer,
              Checkbox(
                value: _photoChecked,
                onChanged: (newValue) {
                  setState(() {
                    _photoChecked = newValue!;
                  });
                },
                activeColor: AppColors.mainPurple,
                checkColor: Colors.white,
              ),
              const Text(
                '사진',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondGrey,
                ),
              ),
              const SizedBox(width: 20), // 간격을 조정하기 위한 SizedBox 추가
              Checkbox(
                value: _recentTripChecked,
                onChanged: (newValue) {
                  setState(() {
                    _recentTripChecked = newValue!;
                    _showRecentTripMessage = newValue;
                  });
                },
                activeColor: AppColors.mainPurple,
                checkColor: Colors.white,
              ),
              const Text(
                '최근여행',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondGrey,
                ),
              ),
            ],
          ),


          if (_showRecentTripMessage) // 메세지 창을 표시하는 조건 추가
            showMesage(),

          if (review.isNotEmpty) // 리뷰가 비어있지 않으면 리스트를 출력하고 아니면 빈 컨테이너 출력
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int index = review.length - 1; index >= 0; index--)
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SimpleReviewList(review[index]),
                  ),
              ],
            )
          else
            NoReviewList(), // 리뷰가 비어있을 때 빈 컨테이너 출력


        ],
      ),
    );
  }

  RoundedContainer showMesage() {
    return RoundedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      borderColor: AppColors.outline,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '최근 6개월 내에 방문한 여행의 리뷰만 모아 볼 수 있습니다.',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.secondGrey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _showRecentTripMessage = false; // x 버튼을 누르면 메세지 창을 닫음
                });
              },
              icon: const Icon(
                Icons.close,
                size: 15,
                color: AppColors.secondGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
