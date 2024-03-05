import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/Itinerary_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';

import '../../../data/entity/account/vo_account.dart';
import '../../../data/entity/itinerary/vo_itinerary.dart';
import '../tag/s_tag.dart';

class RangeCalendar extends ConsumerStatefulWidget {
  const RangeCalendar({super.key});

  @override
  ConsumerState<RangeCalendar> createState() => _RangeCalendarState();
}

class _RangeCalendarState extends ConsumerState<RangeCalendar> {

  List<DateTime?> _rangeDatePickerValueWithDefaultValue = [
    DateTime.now(),
    DateTime.now().add(const Duration(days: 2)),
  ];




  String _getValueText(
      CalendarDatePicker2Type datePickerType,
      List<DateTime?> values,
      ) {
    values = values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
          .map((v) => v.toString().replaceAll('00:00:00.000', ''))
          .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = _formatDate(values[0]);
        final endDate = values.length > 1 ? '~ ' + _formatDateWithoutYear(values[1]) : '';
        valueText = '$startDate $endDate';
      } else {
        return '';
      }
    }

    return valueText;
  }

  String _formatDate(DateTime? date) {
    if (date != null) {
      final formatter = DateFormat('yyyy.MM.dd');
      return formatter.format(date);
    } else {
      return 'null';
    }
  }

  String _formatDateWithoutYear(DateTime? date) {
    if (date != null) {
      final formatter = DateFormat('MM.dd');
      return formatter.format(date);
    } else {
      return 'null';
    }
  }


  @override
  Widget build(BuildContext context) {
    final config = CalendarDatePicker2Config(
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: AppColors.mainPurple,
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 50),

        CalendarDatePicker2(
          config: config,
          value: _rangeDatePickerValueWithDefaultValue,
          onValueChanged: (dates) {
            final itineraryProviderNotifier = ref.read(itineraryProvider.notifier);

            // 선택한 날짜가 있으면 업데이트, 없으면 null로 설정
            itineraryProviderNotifier.setSelectedDates(
              dates.isNotEmpty ? dates[0] : null,
              dates.length > 1 ? dates[1] : null,
            );

            // 시작 날짜와 종료 날짜가 같은 경우에 대한 처리
            if (dates.length > 1 && dates[0] == dates[1]) {
              // 시작 날짜와 종료 날짜가 같으면, 종료 날짜를 시작 날짜로 설정
              itineraryProviderNotifier.setSelectedDates(dates[0], dates[0]);
              dates[1] = dates[0];
            }

            setState(() => _rangeDatePickerValueWithDefaultValue = dates);
          },


        ),
        const SizedBox(height: 50),
        Tap(
          onTap: () {
            // final itineraryProviderNotifier = ref.read(itineraryProvider.notifier);
            // final selectedStartDate = itineraryProviderNotifier.selectedStartDate;
            // final selectedEndDate = itineraryProviderNotifier.selectedEndDate;
            //
            // final newItinerary = Itinerary(
            //   id: 0,
            //   name: '새로운 일정',
            //   type: [],
            //   itineraryStyle: [],
            //   account: Account(),
            //   transportation: 'bus',
            //   area: '지역',
            //   startDate: selectedStartDate ?? DateTime.now(),
            //   endDate: selectedEndDate ?? DateTime.now(),
            //   places: [],
            //   expense: null,
            // );
            //
            // itineraryProviderNotifier.addItinerary(newItinerary);
// itineraryProviderNotifier.setSelectedDates(selectedStartDate, selectedEndDate);
            Nav.push(TagScreen());
          },

          child: RoundedContainer(
            radius: 5,
            backgroundColor: AppColors.mainPurple,
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    _getValueText(
                      config.calendarType,
                      _rangeDatePickerValueWithDefaultValue,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  '/ 등록 완료'.text.bold.white.make(),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 250),
      ],
    );
  }
}
