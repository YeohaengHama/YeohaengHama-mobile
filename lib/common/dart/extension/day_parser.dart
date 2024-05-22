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
