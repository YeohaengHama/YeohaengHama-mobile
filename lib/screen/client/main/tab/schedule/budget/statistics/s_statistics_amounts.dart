import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/statistics/s_statistics.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_dudget_holder.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/statistics/s_statistics_list_holder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart'; // Import the intl package

import '../../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../../common/theme/text_size.dart';
import '../../../../../../../common/widget/DottedLine.dart';
import '../../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/budget/statistics_provider.dart';
import '../../../../../../../entity/dummies.dart';
import '../../../../search/s_space_search.dart';

class StatisticsAmountScreen extends ConsumerStatefulWidget {
  const StatisticsAmountScreen(this.itinerary, {super.key});

  final CheckItinerary itinerary;

  @override
  ConsumerState<StatisticsAmountScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<StatisticsAmountScreen> {
  String selectedCategory = '전체';

  void _showCategoryModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: categoryList.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTile(
                  title: Text('전체'),
                  onTap: () {
                    setState(() {
                      selectedCategory = '전체';
                    });
                    Navigator.pop(context);
                  },
                );
              }
              final category = categoryList[index - 1];
              return ListTile(
                title: Text(category.category),
                onTap: () {
                  setState(() {
                    selectedCategory = category.engCategory;
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final statistics = ref.watch(statisticsProvider);
    final budget = ref.watch(currentBudgetProvider);

    final formattedTotalAmount = NumberFormat('#,##0', 'en_US').format(budget!.totalAmount);

    double getCategoryAmount() {
      switch (selectedCategory) {
        case 'lodging':
          return statistics!.budget.category.amount.lodging;
        case 'flight':
          return statistics!.budget.category.amount.flight;
        case 'traffic':
          return statistics!.budget.category.amount.traffic;
        case 'tour':
          return statistics!.budget.category.amount.tour;
        case 'food':
          return statistics!.budget.category.amount.food;
        case 'shopping':
          return statistics!.budget.category.amount.shopping;
        default:
          return budget.totalAmount!.toDouble();
      }
    }

    final categoryAmount = getCategoryAmount();
    final formattedCategoryAmount = NumberFormat('#,##0', 'en_US').format(categoryAmount);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.white,
      ),
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => _showCategoryModal(context),
            child: Row(
              children: [
                Text(
                  selectedCategory == '전체'
                      ? '전체'
                      : categoryList.firstWhere((cat) => cat.engCategory == selectedCategory).category,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                formatNumber(formattedCategoryAmount),
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.mainPurple,
                    fontWeight: FontWeight.bold),
              ),
              '원을 쓰셨어요'.text.bold.color(AppColors.primaryGrey).size(25).make(),
            ],
          ),
          Height(30),
          Expanded(
            child: StatisticsListHolder(
              budget: budget,
              selectedCategory: selectedCategory,
            ),
          ),
        ],
      ).pSymmetric(h: 30),
    );
  }
}
