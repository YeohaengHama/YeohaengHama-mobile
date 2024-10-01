import 'package:animation_list/animation_list.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_Itinerary_list.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_no_itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../../../../../data/memory/itinerary/share_itinerary_list_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class MyItineraryFragment extends ConsumerStatefulWidget {
  const MyItineraryFragment({Key? super.key});

  @override
  ConsumerState<MyItineraryFragment> createState() => _MyItineraryFragmentState();
}

class _MyItineraryFragmentState extends ConsumerState<MyItineraryFragment> {
  late Future<void> _loadItineraryFuture;
  bool _isChecked = false; // 체크박스 상태를 관리하는 변수

  @override
  void initState() {
    super.initState();
    _loadItineraryFuture = _loadItinerary();
  }

  Future<void> _loadItinerary() async {
    final itineraryApi = ref.read(itineraryApiProvider);
    await itineraryApi.showAllItinerary(ref);
    await itineraryApi.showAllShareItinerary(ref);
  }

  @override
  Widget build(BuildContext context) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);
    final allShareItinerary = ref.watch(shareItineraryListProvider);

    // 체크박스 상태에 따라 보여줄 리스트를 선택함
    final List<dynamic> displayList = _isChecked ? allShareItinerary : allItinerary;

    return Expanded(
      child: FutureBuilder<void>(
        future: _loadItineraryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 로딩 중일 때는 로딩 인디케이터 표시
            return Center(
              child: LoadingAnimationWidget.fallingDot(
                color: AppColors.mainPurple,
                size: 100,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            // 응답이 완료되었을 때
            if (snapshot.hasError) {
              // 에러가 발생했을 때
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // 정상적으로 데이터를 받아왔을 때
              if (displayList.isNotEmpty) {
                return Column(
                  children: [
                    const Height(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          activeColor: AppColors.mainPurple, // 체크 시 색상
                          checkColor: Colors.white, // 체크 표시 색상
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0), // 체크박스 모서리 둥글기
                            side: BorderSide(
                              color: AppColors.mainPurple, // 체크박스 테두리 색상
                              width: 2.0, // 체크박스 테두리 두께
                            ),
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        Text('함께').pOnly(right: 15, left: 2),
                      ],
                    ),
                    Expanded(
                      child: AnimationList(
                        duration: 1100,
                        reBounceDepth: 10.0,
                        children: displayList.map((itinerary) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ItineraryList(allItinerary: itinerary),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              } else {
                // 데이터가 비어있을 때
                return Column(
                  children: [
                    const Height(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          activeColor: AppColors.mainPurple,
                          checkColor: Colors.white, // 체크 표시 색상
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0), // 체크박스 모서리 둥글기
                            side: BorderSide(
                              color: AppColors.mainPurple, // 체크박스 테두리 색상
                              width: 2.0, // 체크박스 테두리 두께
                            ),
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        Text('함께').pOnly(right: 15, left: 2),
                      ],
                    ),
                    const NoItnieraryListWidget(),
                  ],
                );
              }
            }
          } else {
            // 초기 상태나, 데이터 로딩이 완료되지 않은 경우
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
