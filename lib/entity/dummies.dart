import 'package:fast_app_base/entity/area/vo_hama_area.dart';
import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:fast_app_base/entity/diary/vo_diary.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

import 'area/vo_tourism.dart';

String picSum(int id){
  return 'https://picsum.photos/id/$id/200/200';
}
final hamaArea1 = HamaArea(area: '서울', areaImages: picSum(301));
final hamaArea2 = HamaArea(area: '인천', areaImages: picSum(302));
final hamaArea3 = HamaArea(area: '경기', areaImages: picSum(309));
final hamaArea4 = HamaArea(area: '경남', areaImages: picSum(304));
final hamaArea5 = HamaArea(area: '경주', areaImages: picSum(305));
final hamaArea6 = HamaArea(area: '대전', areaImages: picSum(306));
final hamaArea7 = HamaArea(area: '부산', areaImages: picSum(307));
final hamaArea8 = HamaArea(area: '대구', areaImages: picSum(308));


final user1 = User(
  id: 1,
  nickname: "홍길동",
  profileUrl: picSum(1010),
);

final user2 = User(
  id: 2,
  nickname: "바다",
  profileUrl: picSum(900),
);

final user3 = User(
  id: 3,
  nickname: "파토",
  profileUrl: picSum(700),
);

final diary1 = Diary(user1, 1, '봄기운이 도는 완주, 익산여행', '오랜 절친들이랑 가볍게 떠나 힐링한 전완주 익산여행. 전주는 자주 갔지만 완주는 처음, 익산은 두번째 방문이었다. 기대와 설레임에 부응하는 전라북도의 기운과 선한 지역분들과의 접촉에 아직도 여행의 여운이 남아있다.',[picSum(423),],[
  '액티비티','핫플','여행','인스타그램','친구와'
]);
final diary2 = Diary(user2, 2, '목포여행', '목포에 사는 언니가 곧 캐나다로 떠나요. 어쩌면 언니와의 마지막 만남. 언니와 특별한 기억을 남기고 왔어요',[picSum(309),picSum(310)],[
  '카페투어','목포','친구와','행복'
]);
final diary3 = Diary(user3, 3, '동기들과 제주여행', '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',[picSum(319),picSum(320),picSum(321)],[
  '체험','제주도','맛집투어', '친구와','여행'
]);

final tourism1 = Tourism('영동대교', '남포동', [picSum(666)]);
final tourism2 = Tourism('흰여울 문화 마을', '영도∙송도', [picSum(667)]);
final tourism3 = Tourism('부평 깡통 시장', '부산 중구', [picSum(668)]);
final tourism4 = Tourism('BIFF 광장', '남포동', [picSum(669)]);
final tourism5 = Tourism('창비 부산', '남포동', [picSum(672)]);
final tourism6 = Tourism('브릭 캠퍼스 부산', '부산 기장군', [picSum(670)]);
final tourism7 = Tourism('부산 영화의 거리', '해운대', [picSum(671)]);
final tourism8 = Tourism('부산 시티 투어', '남포동', [picSum(643)]);
final tourism9 = Tourism('과학 체험관', '부산', [picSum(674)]);

final restaurant1 = Restaurant('배키욘방', '부산 서면', [picSum(686)]);
final restaurant2 = Restaurant('생활맥주', '부산 동래', [picSum(687)]);
final restaurant3 = Restaurant('해풍 가마솥', '부산 중구', [picSum(688)]);
final restaurant4 = Restaurant('해목', '남포동', [picSum(689)]);
final restaurant5 = Restaurant('웨이브온', '남포동', [picSum(692)]);
final restaurant6 = Restaurant('로얄경약식&스테이크', '부산 기장군', [picSum(690)]);
final restaurant7 = Restaurant('해물 칼국수', '해운대', [picSum(691)]);
final restaurant8 = Restaurant('광안 샤브샤브', '남포동', [picSum(693)]);
final restaurant9 = Restaurant('해피스토리', '부산', [picSum(694)]);



final areaList = [hamaArea1,hamaArea2,hamaArea3,hamaArea4,hamaArea5,hamaArea6,hamaArea7,hamaArea8, ];
final diaryList=[diary1,diary2,diary3,diary1,diary2,diary3,diary1,diary2,diary3,diary1,diary2,diary3];
final tourismList=[tourism1,tourism2,tourism3,tourism4,tourism5,tourism6,tourism7,tourism8,tourism9,tourism1,tourism2,tourism3,tourism4,tourism5,tourism6,tourism7,tourism8,tourism9];
final restaurantList =[restaurant1,restaurant2,restaurant3,restaurant4,restaurant5,restaurant6,restaurant7,restaurant8,restaurant9,restaurant1,restaurant2,restaurant3,restaurant4,restaurant5,restaurant6,restaurant7,restaurant8,restaurant9];