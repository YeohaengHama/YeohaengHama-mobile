import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'dart:convert';


import '../../entity/open_api/search_location_result.dart';

// SearchLocationResult 목록을 관리하는 StateNotifier를 정의합니다.
class SearchLocationNotifier extends StateNotifier<List<SearchLocationResult>> {
  SearchLocationNotifier() : super([]);

  void setSearchLocations(List<SearchLocationResult> newLocations) {
    state = newLocations;
  }

  void addSearchLocation(SearchLocationResult newLocation) {
    state = [...state, newLocation];
  }
}

// Provider를 정의합니다.
final searchLocationProvider = StateNotifierProvider<SearchLocationNotifier, List<SearchLocationResult>>((ref) {
  return SearchLocationNotifier();
});
