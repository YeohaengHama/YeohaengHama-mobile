import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../../../../data/entity/open_api/open_api_image.dart';
import '../../../../../../../data/memory/area/search_location_result_provider.dart';
import '../../../../../../../data/entity/open_api/search_location_result.dart';
import '../../../../../../../data/network/area_api.dart';
import '../../../../../../../data/network/review_api.dart';
import '../../../../search/provider/is_detail_loading_provider.dart';

class NearInfoMap extends ConsumerStatefulWidget {
  const NearInfoMap({Key? key, this.mapX = 126.979, this.mapY = 37.566}) : super(key: key);
  final double mapX;
  final double mapY;

  @override
  ConsumerState<NearInfoMap> createState() => _AreaInfoMapState();
}

class _AreaInfoMapState extends ConsumerState<NearInfoMap> {
  late NaverMapController _controller;
  late NLatLng placeLatLng;
  String? _selectedMarkerTitle;
  String? _selectedMarkerContent;

  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
  }

  Future<void> postDetailArea(SearchLocationResult location) async {
    final openApiDetail = OpenApiDetail(
      numOfRows: '1',
      page: '1',
      contentTypeId: location.contenttypeid,
      contentId: location.contentid,
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postDetailArea(openApiDetail, ref);
  }

  Future<void> postAreaImage(SearchLocationResult location) async {
    final openApiImage = OpenApiImage(
      contentId: location.contentid,
      numOfRows: '1',
      pageNo: '1',
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postAreaImage(openApiImage, ref);
  }

  Future<void> postAreaReview(SearchLocationResult location) async {
    final reviewApi = ref.read(reviewApiProvider);
    await reviewApi.showAllReview(
      int.parse(location.contentid),
      int.parse(location.contenttypeid),
      ref,
    );
  }

  @override
  Widget build(BuildContext context) {
    final searchLocationList = ref.watch(searchLocationProvider);

    return Stack(
      children: [
        NaverMap(
          onMapReady: (controller) {
            _controller = controller;
            _addMarker(); // 생성자로 받은 좌표의 마커 추가
            _addSearchLocationMarkers(searchLocationList); // 검색된 좌표의 마커 추가
            print("네이버 맵 로딩됨!");
          },
          forceGesture: true,
          options: NaverMapViewOptions(
            initialCameraPosition: NCameraPosition(
              target: placeLatLng,
              zoom: 13,
            ),
            mapType: NMapType.basic,
          ),
        ),
        if (_selectedMarkerTitle != null && _selectedMarkerContent != null)
          Positioned(
            left: 16,
            right: 16,
            bottom: 50,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    _selectedMarkerTitle ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(_selectedMarkerContent ?? ''),
                ],
              ),
            ),
          ),
      ],
    );
  }

  void _addMarker() {
    final marker = NMarker(
      id: 'initial_marker',
      position: placeLatLng,
      caption: NOverlayCaption(text: 'Initial Location'),
    );

    marker.setOnTapListener((NMarker marker) {
      _showMarkerInfo(
        marker: marker,
        title: 'Initial Location',
        content: 'This is the initial location marker.',
      );
      return true;
    });

    _controller.addOverlay(marker);
    print("Initial marker added: $placeLatLng");
  }

  void _addSearchLocationMarkers(List<SearchLocationResult> locations) {
    for (var location in locations) {
      final marker = NMarker(
        id: location.contentid,
        position: NLatLng(double.parse(location.mapy), double.parse(location.mapx)),
        caption: NOverlayCaption(text: location.title),
      );

      marker.setOnTapListener((NMarker marker) {
        _showMarkerInfo(
          marker: marker,
          title: location.title,
          content: 'Address: ${location.addr1 ?? ''}\n${location.addr2 ?? ''}',
        );

        // 마커 클릭 시 데이터를 로드하는 함수 호출
        loadDataForLocation(location);

        return true;
      });

      _controller.addOverlay(marker);
      print("Marker added: ${location.title} at (${location.mapx}, ${location.mapy})");
    }
  }

  void _showMarkerInfo({
    required NMarker marker,
    required String title,
    required String content,
  }) {
    setState(() {
      _selectedMarkerTitle = title;
      _selectedMarkerContent = content;
    });

    _controller.updateCamera(
      NCameraUpdate.scrollAndZoomTo(
        target: marker.position,
        zoom: 15,
      ),
    );
  }

  Future<void> loadDataForLocation(SearchLocationResult location) async {
    final isLoading = ref.read(isDetailLoadingProvider.notifier);
    isLoading.setLoading(true);

    await postDetailArea(location);
    await postAreaImage(location);
    await postAreaReview(location);

    isLoading.setLoading(false);
  }
}
