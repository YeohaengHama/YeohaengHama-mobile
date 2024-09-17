import 'dart:async';
import 'dart:math';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_hama_area_holder.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_random_area_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:confetti/confetti.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_all_diary.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/home_diary_holder.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_exist_schedule.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_hama_area.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_home_diary.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_non_schedule.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import '../../../../../data/entity/open_api/open_api_area.dart';
import '../../../../../data/memory/diary/diary_find_all_proiver.dart';
import '../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../data/memory/search/search_simple_area_provider.dart';
import '../../../../../data/network/area_api.dart';
import '../../../../../data/network/diary_api.dart';
import '../../search/provider/is_loading_provider.dart';
import '../../search/s_space_search.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment>
    with SingleTickerProviderStateMixin {
  final List<String> _areaList = [
    "서울",
    "인천",
    "경기",
    "경남",
    "경주",
    "대전",
    "부산",
    "대구",
    "광주",
    "울산",
    "강원",
    "충북",
    "충남",
    "전북",
    "전남",
    "제주"
  ];
  final List<String> choSungList = [
    "ㅅㅇ",
    "ㅇㅊ",
    "ㄱㄱ",
    "ㄱㄴ",
    "ㄱㅈ",
    "ㄷㅈ",
    "ㅂㅅ",
    "ㄷㄱ",
    "ㄱㅈ",
    "ㅇㅅ",
    "ㄱㅇ",
    "ㅊㅂ",
    "ㅊㄴ",
    "ㅈㅂ",
    "ㅈㄴ",
    "ㅈㅈ",
  ];

  late ConfettiController _confettiController;
  final TextEditingController searchController = TextEditingController();

  double pullHeight = 0.0;
  final double maxPullHeight = 80.0;
  final ScrollController scrollController = ScrollController();
  String displayText = "";
  String choSungText = "";
  final double tabListpV = 12;
  final double tabListph = 20;
  final double areaSize = 130;
  final double contentP = 15;
  final double contentLeftPadding = 30;
  final double listFontSize = 20.0;
  final double diaryContainerWidth = 270;
  final double diaryContainerHeight = 250;
  bool defaultArea = true;
  String? randomArea;

  @override
  void initState() {
    super.initState();

    _confettiController =
        ConfettiController(duration: const Duration(seconds: 10));

    final diaryApi = ref.read(diaryApiProvider);
    diaryApi.showAllDiary(ref);

    scrollController.addListener(() {
      // 스크롤 위치가 가장 위에 있을 때만 pullHeight를 업데이트할 수 있도록
      if (scrollController.offset <= scrollController.position.minScrollExtent) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  Future<void> postSearchArea() async {
    final loadingNotifier = ref.read(isLoadingProvider.notifier);

    // 로딩 상태 시작
    loadingNotifier.setLoading(true);

    final openApiArea = OpenApiArea(
      numOfRows: '10',
      page: '1',
      contentTypeId: '12',
      keyword: searchController.text,  // 선택된 지역명을 keyword로 사용
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.searchRandomArea(openApiArea, ref);
    loadingNotifier.setLoading(false);
  }

  void onPointerMove(PointerMoveEvent event) {
    if (scrollController.offset <= scrollController.position.minScrollExtent) {
      setState(() {
        // pullHeight를 0과 maxPullHeight 사이로 제한
        pullHeight =
            (pullHeight + event.delta.dy * 0.5).clamp(0.0, maxPullHeight);
        int index = (pullHeight / maxPullHeight * choSungList.length).floor() %
            choSungList.length;
        choSungText = choSungList[index];
      });
    }
  }

  void onPointerUp(PointerUpEvent event) async {
    if (pullHeight >= maxPullHeight) {
      int index = Random().nextInt(_areaList.length);
      setState(() {
        defaultArea = false;
        displayText = "${_areaList[index]}";
        randomArea =  "${_areaList[index]}";
        choSungText = "";
      });

      // 선택된 지역명을 searchController.text에 저장하고, postSearchArea 호출
      searchController.text = displayText;

      _confettiController.play(); // 폭죽 애니메이션 시작
      await postSearchArea();
      await scrollController.animateTo(0,
          duration: const Duration(milliseconds: 1500), curve: Curves.easeOut);

      Timer(const Duration(milliseconds: 800), () {
        setState(() {
          pullHeight = 0;
          choSungText = "";
          displayText = "";
          // displayText를 더 이상 빈 문자열로 초기화하지 않음
          _confettiController.stop(); // 폭죽 애니메이션 멈춤
        });
      });
    } else {
      setState(() {
        pullHeight = 0;
        choSungText = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final createdItinerary = ref.watch(itineraryCheckProvider);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.mainPurple,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.mainPurple,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
        backgroundColor: AppColors.outline,
        body: Stack(
          children: [
            Listener(
              onPointerMove: onPointerMove,
              onPointerUp: onPointerUp,
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverAppBar(
                    floating: false,
                    pinned: true,
                    backgroundColor: AppColors.mainPurple,
                    title: null,
                    scrolledUnderElevation: 0,
                    actions: [
                      IconButton(
                        onPressed: () {
                          _confettiController.stop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const SpaceSearchFragment(null)),
                          );
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () => openEndDrawer(context),
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    expandedHeight: 260,
                    flexibleSpace: FlexibleSpaceBar(
                      background: createdItinerary != null
                          ? ExistScheduleWidget(createdItinerary)
                          : NonSchduleWidget(
                          tabListph: tabListph, tabListpV: tabListpV),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverPullToRefreshDelegate(
                      minExtent: 0,
                      maxExtent: pullHeight,
                      child: Container(
                        height: pullHeight,
                        color: AppColors.outline,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedOpacity(
                              opacity: (pullHeight / maxPullHeight)
                                  .clamp(0.0, 1.0), // opacity 값을 0과 1 사이로 제한
                              duration: const Duration(milliseconds: 300),
                              child: Text(
                                choSungText.isNotEmpty&&displayText.isEmpty ? choSungText : "",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purple),
                              ),
                            ),
                            if (defaultArea == false) ...{
                              Text(
                                displayText!,
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purple),
                              ),
                            },
                            const SizedBox(width: 8),
                            Text(
                              "땡겨요",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryGrey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Line(
                              color: AppColors.outline, height: lineHeight),
                          Container(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: randomArea!= null ? randomArea : '여행하마',
                                    style: TextStyle(
                                        color: AppColors.mainPurple,
                                        fontSize: listFontSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' 여행 추천지',
                                    style: TextStyle(
                                        color: AppColors.primaryGrey,
                                        fontSize: listFontSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ).pSymmetric(v: 8),
                          ).pOnly(left: contentLeftPadding, top: contentP),
                          defaultArea == true ? HamaAreaHolder(areaSize: areaSize, areaList: _areaList).pOnly(top: contentP - 5) :
                          RandomAreaHolder(areaSize: areaSize),


                          const Line(
                              color: AppColors.outline, height: lineHeight),
                          Container(
                            alignment: Alignment.topLeft,
                            child: '국내 여행자들의 생생한 여행일기'
                                .text
                                .bold
                                .size(listFontSize)
                                .make()
                                .pSymmetric(v: contentP, h: contentLeftPadding)
                                .pOnly(top: 6),
                          ),
                          HomeDiaryHolder(),
                          const Height(30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Confetti widget
            Positioned.fill(
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                createParticlePath: drawCloud,
                shouldLoop: false,
                numberOfParticles: 20,
                // 폭죽의 양을 늘립니다
                colors: const [
                  AppColors.mainPurple,
                  AppColors.pastelPuple,
                  AppColors.whitePuple,
                  AppColors.purple,
                ],
                gravity: 0.05,
                emissionFrequency: 0.05,
                // 폭죽이 발사되는 빈도
                minBlastForce: 15,
                // 최소 폭죽 발사 힘
                maxBlastForce: 25, // 최대 폭죽 발사 힘
              ),
            ),
          ],
        ));
  }

  void openEndDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }
}

class _SliverPullToRefreshDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent;
  final double _maxExtent;
  final Widget child;

  _SliverPullToRefreshDelegate({
    required double minExtent,
    required double maxExtent,
    required this.child,
  })  : _minExtent = minExtent,
        _maxExtent = maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get minExtent => _minExtent;

  @override
  double get maxExtent => _maxExtent;

  @override
  bool shouldRebuild(_SliverPullToRefreshDelegate oldDelegate) {
    return oldDelegate._minExtent != _minExtent ||
        oldDelegate._maxExtent != _maxExtent ||
        oldDelegate.child != child;
  }
}

Path drawCloud(Size size) {
  double width = 50;
  double height = 50;

  Path path = Path();

  // 구름 모양의 타원들을 그리기
  path.addOval(
      Rect.fromLTWH(0.1 * width, 0.3 * height, 0.3 * width, 0.3 * height));
  path.addOval(
      Rect.fromLTWH(0.2 * width, 0.2 * height, 0.4 * width, 0.4 * height));
  path.addOval(
      Rect.fromLTWH(0.4 * width, 0.3 * height, 0.3 * width, 0.3 * height));
  path.addOval(
      Rect.fromLTWH(0.5 * width, 0.4 * height, 0.2 * width, 0.2 * height));

  // 구름 모양의 중첩된 타원 형태
  path.addOval(
      Rect.fromLTWH(0.2 * width, 0.4 * height, 0.3 * width, 0.3 * height));
  path.addOval(
      Rect.fromLTWH(0.3 * width, 0.5 * height, 0.2 * width, 0.2 * height));
  path.addOval(
      Rect.fromLTWH(0.4 * width, 0.4 * height, 0.3 * width, 0.3 * height));

  // 클로즈로 경로를 닫아서 구름의 형태 완성
  path.close();
  return path;
}
