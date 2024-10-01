import 'package:fast_app_base/common/widget/w_profile_image.dart';
import 'package:fast_app_base/data/network/itinerary_api.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/invite/w_all_accounts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
import '../../../../../../data/memory/account/all_account_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../data/network/search_api.dart';
class InvateSchedule extends ConsumerWidget {
  const InvateSchedule({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itinerary = ref.watch(itineraryCheckProvider);
    final accountsProvider = ref.watch(allAccountProvider);
    final _SearchApiProvider = ref.read(SearchApiProvider);

    final itineraryApi = ItineraryApi();
    String nickName = '';
    final filteredAccounts = accountsProvider.where((account) =>
    ![itinerary!.account.id, ...itinerary.sharedAccount.map((sharedAccount) => sharedAccount.id)]
        .contains(account.id)).toList(); // 하마친구 필터링
    final ScrollController scrollControlle = ScrollController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              // 뒤로가기 버튼 클릭 시 동작
              Nav.pop(context);
            }),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              itinerary!.name
                  .text
                  .bold
                  .size(20)
                  .color(AppColors.primaryGrey)
                  .make(),
              const Height(15),
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
                        nickName = value;
                      },
                      decoration: const InputDecoration(
                        hintText: '닉네임을 입력해주세요.',
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
                  const Width(10),
                  RoundButton(
                    height: 40,
                    bgColor: Colors.transparent,
                    borderColor: AppColors.mainPurple,
                    borderRadius: 5,
                    text: '검색',
                    textColor: AppColors.mainPurple,
                    onTap: () async {
                      await _SearchApiProvider.searchAccount(ref, nickName);

                    },
                  ),
                ],
              ),
              const Height(15),
              Row(
                children: [
                  '하마 친구'.text.bold.color(AppColors.primaryGrey).make(), // 하마 친구로 변경
                  '${filteredAccounts.length}'
                      .text
                      .bold
                      .color(AppColors.mainPurple)
                      .make(),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollControlle,
                  itemCount: filteredAccounts.length,
                  itemBuilder: (context, index) {
                    final account = filteredAccounts[index];
                    return Row(
                      children: [
                        ProfileImage(photoUrl: account.photoUrl, width: 40, height: 40),
                        const Width(10),
                        account.nickname.text.bold.color(AppColors.primaryGrey).make(),
                        spacer,
                        RoundButton(
                          height: 30,
                          bgColor: Colors.transparent,
                          borderColor: AppColors.mainPurple,
                          borderRadius: 5,
                          text: '초대',
                          textColor: AppColors.mainPurple,
                          onTap: () async {
                            await itineraryApi.inviteItinerary(
                                account.id.toString(), itinerary.itineraryId, context, ref);
                          },
                        ),
                      ],
                    ).pSymmetric(v: 10);
                  },
                ),
              ),
            ],
          ).pSymmetric(h: 30),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.2,
            maxChildSize: 0.8,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      color: AppColors.whiteGrey ,
                      width: double.maxFinite,
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 5,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: AllAccountsWidget(scrollController: scrollController).pSymmetric(h: 30),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
