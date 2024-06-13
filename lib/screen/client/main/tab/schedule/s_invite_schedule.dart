import 'package:fast_app_base/common/widget/w_profile_image.dart';
import 'package:fast_app_base/data/network/itinerary_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/common.dart';
import '../../../../../data/memory/itinerary/itinerary_check_provider.dart';

class InvateSchedule extends ConsumerWidget {
  const InvateSchedule({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itinerary = ref.watch(itineraryCheckProvider);

    final itineraryApi = ItineraryApi();
    String accountId = '';
    final sharedAccounts = itinerary!.sharedAccount
        .where((sharedAccount) => sharedAccount.id != itinerary.account.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              // 뒤로가기 버튼 클릭 시 동작
              Nav.pop(context);
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '${itinerary.name}'
              .text
              .bold
              .size(20)
              .color(AppColors.primaryGrey)
              .make(),
          Height(15),
          '함께 여행갈 친구나 가족을 초대해보세요.\n여행 일정을 함께 계획할 수 있습니다.\n(모임 채팅방이 자동 개설 됩니다.)'
              .text
              .size(14)
              .color(AppColors.secondGrey)
              .make(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 190,
                child: TextField(
                  cursorColor: AppColors.mainPurple,
                  onChanged: (value) {
                    accountId = value;
                  },
                  decoration: const InputDecoration(
                    hintText: '사용자 코드를 입력해주세요.',
                    hintStyle: TextStyle(
                      color: AppColors.forthGrey,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mainPurple,
                        width: 1,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mainPurple,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mainPurple,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Width(10),
              RoundButton(
                height: 40,
                bgColor: Colors.transparent,
                borderColor: AppColors.mainPurple,
                borderRadius: 5,
                text: '초대',
                textColor: AppColors.mainPurple,
                onTap: () async {
                  await itineraryApi.inviteItinerary(
                      accountId, itinerary.itineraryId, context, ref);
                },
              ),
            ],
          ),
          Height(15),
          Row(
            children: [
              '여행친구'.text.bold.color(AppColors.primaryGrey).make(),
              '${sharedAccounts.length}'
                  .text
                  .bold
                  .color(AppColors.mainPurple)
                  .make(),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: sharedAccounts.length,
              itemBuilder: (context, index) {
                final sharedAccount = sharedAccounts[index];
                return Row(
                  children: [
                   ProfileImage(photoUrl: sharedAccount.photoUrl, width: 40, height: 40),
                    Width(10),
                    '${sharedAccount.nickname}'.text.bold.color(AppColors.primaryGrey).make()
                  ],
                ).pSymmetric(v: 10);
              },
            ),
          ),
        ],
      ).pSymmetric(h: 30),
    );
  }
}
