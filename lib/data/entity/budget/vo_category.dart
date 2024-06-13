import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_category.freezed.dart';

@freezed
class CategoryIcon with _$CategoryIcon {
  const factory CategoryIcon({
    required IconData icon,
    required String category,
    required String engCategory,
    required Color color,
  }) = _CategoryIcon;
}
