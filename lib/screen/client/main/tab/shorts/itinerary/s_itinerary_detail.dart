import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_check_itinerary.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/itinerary/w_itinerary_place_holder_list.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../../../../data/network/itinerary_api.dart';
import '../p_is_playing.dart';


class DetailItineraryScreen extends HookConsumerWidget {
  final CheckItinerary itinerary;
  final String title;

  const DetailItineraryScreen(this.itinerary, this.title, {Key? super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final customController = usePageController();
    final itineraryApi= ref.read(itineraryApiProvider);
    final shouldShowTitle = useState(false);
    final isPlaying = ref.read(isPlayingProvider.notifier);

    useEffect(() {
      final controller = customController;
      scrollListener() {
        if (controller.offset > 300) {
          shouldShowTitle.value = true;
        } else {
          shouldShowTitle.value = false;
        }
      }

      controller.addListener(scrollListener);

      return () {
        controller.removeListener(scrollListener);
      };
    }, []);

    Widget buildTitle() {
      return Text(
        title,
        style: const TextStyle(
          color: AppColors.primaryGrey,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ).pOnly(left: 50);
    }

    return Scaffold(backgroundColor: AppColors.white,
      body: Material(
        color: Colors.white,
        child: CustomScrollView(
          controller: customController,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: false,
              pinned: true,
              scrolledUnderElevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);  // 뒤로 가기
                  isPlaying.setPlaying(true);  // 뒤로 가기 아이콘을 눌렀을 때 실행

                },
              ),
              actions: [

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(

                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildTitle(),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ItineraryPlaceHolderList(places: itinerary.placesByDay),
                      Center(
                        child: Tap (
                          onTap: (){itineraryApi.itineraryCopy(context, ref, itinerary.itineraryId);},
                          child: RoundedContainer(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                            radius: 5,
                            backgroundColor: AppColors.mainPurple,
                            child: SizedBox(
                              width: double.infinity,
                              height: 20,
                              child: Center(
                                child: '내 일정으로 담기'
                                    .text
                                    .size(15)
                                    .color(Colors.white)
                                    .bold
                                    .make(),
                              ),
                            ),
                          ).pSymmetric(h: 50),
                        ),
                      ),
                      const Height(20),
                      const Line(color: AppColors.outline,),

                      Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          ...itinerary.type!,
                          ...itinerary.style!,
                        ].map((tag) {
                          return '#$tag '.text.bold.color(AppColors.secondGrey).make().pOnly(right: 2);
                        }).toList(),
                      ).pSymmetric(h: contentLeftPadding, v: 20),


                      const Height(30)
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
