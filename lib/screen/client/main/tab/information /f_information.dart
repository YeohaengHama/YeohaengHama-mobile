import 'package:fast_app_base/screen/client/main/tab/information%20/search/Directions/s_directions.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/s_space_search.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/f_search_location_area.dart';
import '../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../data/network/area_api.dart';

class InformationFragment extends ConsumerWidget {
  const InformationFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final areaApi = ref.read(areaApiProvider);
    final mapCoordinates = ref.read(mapCoordinatesProvider);

    return Scaffold(
      body: Stack(
        children: [
          const SearchLocationArea(),
          Positioned(
            top: 70.0, // 원하는 위치로 조정
            left: 20.0,
            right: 20.0,
            child: SearchBar(mapCoordinates: mapCoordinates),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final mapCoordinates;

  const SearchBar({super.key, required this.mapCoordinates});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: '검색어를 입력하세요',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        ),
        onTap: () {
          if (mapCoordinates.startTitle != '' ||
              mapCoordinates.endTitle != '') {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DirectionsFragment()),
            );
          }
        },
        onSubmitted: (String value) {
          // 검색어 제출 시 처리 로직
          FocusScope.of(context).unfocus(); // 포커스 제거
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SpaceSearchFragment(value)),
          );

        },
      ),
    );
  }
}
