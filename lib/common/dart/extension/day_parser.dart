import 'dart:core';

int getIndexFromDayString(String dayString) {
  RegExp regex = RegExp(r'Day-(\d+)');
  RegExpMatch? match = regex.firstMatch(dayString);
  if (match != null && match.groupCount >= 1) {
    String indexStr = match.group(1)!;
    return int.parse(indexStr);
  }
  return -1; // 일치하는 숫자가 없는 경우 -1을 반환하거나 적절한 오류 처리를 수행할 수 있습니다.
}
String formatNumber(String s) {
  return s.replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}
String getTimeDifference(DateTime date) {
  final now = DateTime.now();
  final difference = now.difference(date);

  if (difference.inMinutes < 60) {
    return '${difference.inMinutes}분';
  } else if (difference.inHours < 24) {
    return '${difference.inHours}시간';
  } else if (difference.inDays < 7) {
    return '${difference.inDays}일';
  } else {
    return '${(difference.inDays / 7).floor()}주';
  }
}
