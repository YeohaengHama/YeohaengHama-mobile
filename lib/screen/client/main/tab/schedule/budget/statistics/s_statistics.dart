import 'dart:math';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/statistics/s_statistics_amounts.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../common/widget/DottedLine.dart';
import '../../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../../common/dart/extension/num_formatter.dart';
import '../../../../../../../data/entity/budget/vo_statistics.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/budget/statistics_provider.dart';
import '../../../../../../../data/network/budget_api.dart';
import '../../../../../../../entity/dummies.dart';

class StatisticsScreen extends ConsumerStatefulWidget {
  const StatisticsScreen({super.key});

  @override
  ConsumerState<StatisticsScreen> createState() => _StatisticsScreen();
}

class _StatisticsScreen extends ConsumerState<StatisticsScreen> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    final itinerary = ref.read(itineraryCheckProvider);
    ref.read(budgetApiProvider).budgetStatistics(itinerary!, ref);
  }

  @override
  Widget build(BuildContext context) {
    final itinerary = ref.read(itineraryCheckProvider);
    final budget = ref.read(currentBudgetProvider);
    final budgetStatistics = ref.watch(statisticsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Nav.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          formatDateRange(itinerary!.startDate, itinerary.endDate)
              .text
              .bold
              .size(20)
              .color(AppColors.primaryGrey)
              .make(),
          itinerary.name.text.size(20).color(AppColors.primaryGrey).bold.make(),
          '지출내역입니다.'.text.size(20).color(AppColors.primaryGrey).bold.make(),
          Height(30),
          Container(
            width: double.maxFinite,
            height: 2,
            child: CustomPaint(
              painter: DottedLinePainter(),
            ),
          ),
          '총 지출 금액'
              .text
              .size(15)
              .color(AppColors.primaryGrey)
              .bold
              .make()
              .pSymmetric(v: 12),
          Container(
            width: double.maxFinite,
            height: 2,
            child: CustomPaint(
              painter: DottedLinePainter(),
            ),
          ),
          Tap(
            onTap: () { ; },
            child: Row(
              children: [
                Text(
                  formatNumber(budget!.totalAmount.toString()),
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.mainPurple,
                      fontWeight: FontWeight.bold),
                ),
                '원'.text.bold.color(AppColors.primaryGrey).size(20).make(),
                spacer,
                Tap(onTap: () {  Nav.push(StatisticsAmountScreen(itinerary));},
                    child: Icon(Icons.keyboard_arrow_right_rounded))
              ],
            ).pSymmetric(v: 20),
          ),
          Container(
            width: double.maxFinite,
            height: 2,
            child: CustomPaint(
              painter: DottedLinePainter(),
            ),
          ),
          '식비에서 가장 많이 썼어요.'
              .text
              .size(15)
              .color(AppColors.primaryGrey)
              .bold
              .make()
              .pSymmetric(v: 12),
          Container(
            width: double.maxFinite,
            height: 2,
            child: CustomPaint(
              painter: DottedLinePainter(),
            ),
          ),
          Height(30),
          '지출 내역 비율'.text.size(18).color(AppColors.primaryGrey).bold.make(),
          Height(20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BarChart(
                isPlaying ? randomData() : mainBarData(budgetStatistics),
                swapAnimationDuration: animDuration,
              ),
            ),
          ),
          Height(40),
        ],
      ).pSymmetric(h: 30),
    );
  }

  BarChartGroupData makeGroupData(
      int x,
      double y, {
        bool isTouched = false,
        Color? barColor,
        double width = 22,
        double backgroundHeight = 100,
        List<int> showTooltips = const [],
      }) {
    barColor ??= AppColors.white;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? barColor : AppColors.mainPurple,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: AppColors.pastelPuple)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: backgroundHeight,
            color: AppColors.whitePuple,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups(Statistics? budgetStatistics) {
    if (budgetStatistics == null) {
      return [];
    }

    final individual = budgetStatistics.individual;
    final amounts = [
      individual.amount.lodging,
      individual.amount.flight,
      individual.amount.traffic,
      individual.amount.tour,
      individual.amount.food,
      individual.amount.shopping,
      individual.amount.other,
    ];

    final maxAmount = amounts.reduce(max); // 가장 높은 비율을 찾음

    return List.generate(categoryList.length, (i) {
      final isTouched = i == touchedIndex;
      final category = categoryList[i];
      double value;
      switch (category.engCategory) {
        case 'lodging':
          value = individual.amount.lodging;
          break;
        case 'flight':
          value = individual.amount.flight;
          break;
        case 'traffic':
          value = individual.amount.traffic;
          break;
        case 'tour':
          value = individual.amount.tour;
          break;
        case 'food':
          value = individual.amount.food;
          break;
        case 'shopping':
          value = individual.amount.shopping;
          break;
        case 'other':
          value = individual.amount.other;
          break;
        default:
          value = 0.0;
      }

      return makeGroupData(i, value, isTouched: isTouched, barColor: category.color, backgroundHeight: maxAmount, showTooltips: isTouched ? [0] : []);
    });
  }

  BarChartData mainBarData(Statistics? budgetStatistics) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (spot) {
            final category = categoryList[touchedIndex];
            return category.color;
          },
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            final category = categoryList[group.x];
            return BarTooltipItem(
              '${category.category}\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '${(rod.toY - 1).toStringAsFixed(1)}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) => GestureDetector(
              onTapDown: (_) {
                setState(() {
                  touchedIndex = value.toInt();
                });
              },
              onTapUp: (_) {
                setState(() {
                  touchedIndex = -1;
                });
              },
              child: getTitlesWithIcons(value, meta, touchedIndex),
            ),
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(budgetStatistics),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitlesWithIcons(double value, TitleMeta meta, int touchedIndex) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    final isTouched = value.toInt() == touchedIndex;

    switch (value.toInt()) {
      case 0:
        text = Column(
          children: [
            Icon(Icons.home, color: isTouched ? Color.fromARGB(255, 232, 52, 52) : AppColors.pastelPuple),
          ],
        );
        break;
      case 1:
        text = Column(
          children: [
            Icon(Icons.flight, color: isTouched ? Color.fromARGB(255, 52, 205, 232) : AppColors.pastelPuple),
          ],
        );
        break;
      case 2:
        text = Column(
          children: [
            Icon(Icons.directions_car, color: isTouched ? Color.fromARGB(255, 52, 232, 76) : AppColors.pastelPuple),
          ],
        );
        break;
      case 3:
        text = Column(
          children: [
            Icon(Icons.confirmation_num, color: isTouched ?Color.fromARGB(255, 85, 52, 232) : AppColors.pastelPuple),
          ],
        );
        break;
      case 4:
        text = Column(
          children: [
            Icon(Icons.restaurant, color: isTouched ? Color.fromARGB(255, 255, 218, 0) : AppColors.pastelPuple),
          ],
        );
        break;
      case 5:
        text = Column(
          children: [
            Icon(Icons.shopping_cart, color: isTouched ? Color.fromARGB(255, 255, 134, 46) : AppColors.pastelPuple),
          ],
        );
        break;
      case 6:
        text = Column(
          children: [
            Icon(Icons.category, color: isTouched ? Color.fromARGB(255, 74, 126, 145): AppColors.pastelPuple),
          ],
        );
        break;
      default:
        text = Text('', style: style);
        break;
    }
    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: true,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) => GestureDetector(
              onTapDown: (_) {
                setState(() {
                  touchedIndex = value.toInt();
                });
              },
              onTapUp: (_) {
                setState(() {
                  touchedIndex = -1;
                });
              },
              child: getTitlesWithIcons(value, meta, touchedIndex),
            ),
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(categoryList.length, (i) {
        final category = categoryList[i];
        return makeGroupData(
          i,
          Random().nextInt(15).toDouble() + 6,
          barColor: category.color,
          showTooltips: i == touchedIndex ? [0] : [],
        );
      }),
      gridData: const FlGridData(show: false),
    );
  }
}
