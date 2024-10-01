

import 'package:easy_localization/easy_localization.dart';

extension DateTimeExtension on DateTime {
  String get formattedDate => DateFormat('yyyy/MM/dd').format(this);

  String get formattedTime => DateFormat('HH:mm').format(this);

  String get formattedDateTime => DateFormat('yyyy/MM/dd HH:mm').format(this);
}
String formatStartDate(String startDate) {
  // 문자열 형식의 시작일을 DateTime 객체로 변환
  DateTime dateTime = DateTime.parse(startDate);
  // 원하는 형식으로 날짜 포맷팅 (YYYY.MM.DD)
  return '${dateTime.year}.${dateTime.month.toString().padLeft(2, '0')}.${dateTime.day.toString().padLeft(2, '0')}';
}

String formatEndDate(String endDate) {
  // 문자열 형식의 종료일을 DateTime 객체로 변환
  DateTime dateTime = DateTime.parse(endDate);
  // 원하는 형식으로 날짜 포맷팅 (MM.DD)
  return '${dateTime.month.toString().padLeft(2, '0')}.${dateTime.day.toString().padLeft(2, '0')}';
}

String formatDateRange(String startDate, String endDate) {
  // 시작일과 종료일을 포맷팅하여 문자열로 반환
  return '${formatStartDate(startDate)}~${formatEndDate(endDate)}';
}
String formatStayDuration(String startDate, String endDate) {
  // 시작일과 종료일을 DateTime 객체로 변환
  DateTime startDateTime = DateTime.parse(startDate);
  DateTime endDateTime = DateTime.parse(endDate);

  // 시작일과 종료일 사이의 일수 차이를 계산
  Duration difference = endDateTime.difference(startDateTime);

  // 박과 일을 계산
  int nights = difference.inDays; // 박 수
  int days = difference.inDays + 1; // 날짜의 차이 값에 1을 더한 것이 '일'의 개념

  // "몇 박 몇 일" 형식으로 변환
  String formattedDuration = '$nights박 $days일';
  return formattedDuration;
}

