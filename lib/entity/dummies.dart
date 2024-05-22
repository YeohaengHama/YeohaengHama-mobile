import 'package:fast_app_base/data/entity/budget/vo_category.dart';
import 'package:fast_app_base/entity/area/vo_area.dart';
import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:fast_app_base/entity/area/vo_review.dart';
import 'package:fast_app_base/entity/area/vo_tourism_detail.dart';
import 'package:fast_app_base/entity/diary/vo_diary.dart';
import 'package:fast_app_base/entity/schedule/vo_schedule.dart';
import 'package:fast_app_base/entity/tag/vo_who_tag.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

final tourism1 = Tourism(1,'영동대교', '남포동', [picSum(666),picSum(667),picSum(668)], '너비 25m(6차선), 길이 1,040m의 장대교량으로 소요공사비 20억6500만원을 투입하여 1970년 8월 착공, 1973년 11월 준공, 개통하였다. 상부는 3경간 연속강판형으로서 지간 50m의 동일한 구조형식으로 구성되었다. 하부는 구주식 교각 16기중 15기는 우물통기초이고 1기는 직접확대기초이며, 중력식 교대 2기는 직접기초와 파일기초로 각기 건설된 다리이다. 이 다리는 강북과 강남을 잇는 중추적인 역할을 하는 다리로서 청담동·삼성동 일원의 상업업무 중심지역과 주변 거주지역의 발전을 도모할 뿐 아니라 기존의 한남대교와 잠실대교에 밀집되는 교통량을 배분시켜 교통소통을 원활하게 하고 있다. 성수대교 사고 후 서울시에서는 학계와 공무원, 시공사 등의 전문가 합동으로 긴급점검을 실시하여 1995. 3월에서 6월까지 안전에 이상을 초래 할 수 있는 교좌장치 등에 대해 긴급보수를 하였고, 1997년에는 전체적인 정기점검을 실시하고 그 결과에 의해 1997년 9월에서 1998년 4월까지 보수공사를 실시하였다. 다리의 안정화 제고에 노력한 결과 다리안전에는 이상이 없으나, 한강다리 중에서 강남·북을 연결하는데 중추적인 역할을 하고 있는 영동대교의 노후 상태를 볼 때 장기적인 구조물의 안전과 중차량의 증가로 인한 다리의 성능개선 여부를 결정할 필요가 있었고, 이에 1997년 11월에서 1998년 7월까지 정밀안전진단을 포함한 성능개선 타당성 조사 용역을 시행하였다. 그 결과 주형의 외측에 부식이 진행되고 있고 콘크리트 슬래브 하면에 백태현상이 있으나 구조물 안전에는 문제가 없으므로 보수·보강하여 사용 가능한 것으로 나타났다. 따라서 구조물의 장기적인 안전 제고를 위한 보수, 보강을 위해 1999년 4월에서 1999년 12월까지 실시설계를 시행하였으며, 그 결과에 의해 2000년에는 전체적인 보수보강이 시행중에 있다. [네이버 지식백과] 영동대교 [永東大橋] (한국민족문화대백과, 한국학중앙연구원)');
final tourism2 = Tourism(2,'흰여울 문화 마을', '영도∙송도', [picSum(667)],' 원래 이곳은 현지 주민들 사이에서 제2송도(줄여서 2송도)[1]라고 불렸던 곳이다. 왜 2송도냐면 송도해수욕장에서 바다 건너편에 보이는 동네여서. 2011년 이송도지역 주민들의 마을이름 짓기에서 도로명 흰여울길에서 흰여울을 가져와 흰여울마을이라 부르기 시작하였다. 마을명칭이 생기기 전 도로명주소 시범사업의 일환으로 전국 곳곳의 도로는 물론이고 골목길까지 도로명이 붙었는데 문제는 대부분의 골목길이 마을의 실제 유래나 특성과는 무관하게 아무렇게나 붙여졌다는 것이다. 2송도 곡각지의 달동네와 절벽을 따라 나 있는 골목길인 흰여울길도 마찬가지였다. 이렇게 아무렇게나 지어진 도로명은 도로명주소 사업이 정식으로 시작한 2014년에 일괄적으로 AA로NN번길 등의 형식으로 개명되었었다. 흰여울길은 사진가들의 출사장소로 이미 알려 졌었지만 변호인 영화를 기점으로 외부에 조금씩 알려지기 시작하였다. [2] 일단 마을에 서 있는 표지판(영도구청에서 제작)에는 봉래산 기슭에서 여러 갈래 물줄기가 높은 절개지를 따라 바다로 흐르는 모습이 흰 물보라가 이는 물살 모습과 닮았다는 데서 유래했다고 설명하고 있다.');
final tourism3 = Tourism(3,'부평 깡통 시장', '부산 중구', [picSum(668)],'부평 깡통 시장 입니다.');
final tourism4 = Tourism(4,'BIFF 광장', '남포동', [picSum(669)],'BIFF 광장 입니다.');
final tourism5 = Tourism(5,'창비 부산', '남포동', [picSum(672)],'창비 부산 입니다.');
final tourism6 = Tourism(6,'브릭 캠퍼스 부산', '부산 기장군', [picSum(670)],'브릭 캠퍼스 부산 입니다.');
final tourism7 = Tourism(7,'부산 영화의 거리', '해운대', [picSum(671)],'부산 영화의 거리 입니다.');
final tourism8 = Tourism(8,'부산 시티 투어', '남포동', [picSum(643)],'부산 시티 투어입니다.');
final tourism9 = Tourism(9,'과학 체험관', '부산', [picSum(674)],'과학 체험관 입니다.');

final tourismDetail1 = TourismDetail(tourism: tourism1, content: '너비 25m(6차선), 길이 1,040m의 장대교량으로 소요공사비 20억6500만원을 투입하여 1970년 8월 착공, 1973년 11월 준공, 개통하였다. 상부는 3경간 연속강판형으로서 지간 50m의 동일한 구조형식으로 구성되었다. 하부는 구주식 교각 16기중 15기는 우물통기초이고 1기는 직접확대기초이며, 중력식 교대 2기는 직접기초와 파일기초로 각기 건설된 다리이다. 이 다리는 강북과 강남을 잇는 중추적인 역할을 하는 다리로서 청담동·삼성동 일원의 상업업무 중심지역과 주변 거주지역의 발전을 도모할 뿐 아니라 기존의 한남대교와 잠실대교에 밀집되는 교통량을 배분시켜 교통소통을 원활하게 하고 있다. 성수대교 사고 후 서울시에서는 학계와 공무원, 시공사 등의 전문가 합동으로 긴급점검을 실시하여 1995. 3월에서 6월까지 안전에 이상을 초래 할 수 있는 교좌장치 등에 대해 긴급보수를 하였고, 1997년에는 전체적인 정기점검을 실시하고 그 결과에 의해 1997년 9월에서 1998년 4월까지 보수공사를 실시하였다. 다리의 안정화 제고에 노력한 결과 다리안전에는 이상이 없으나, 한강다리 중에서 강남·북을 연결하는데 중추적인 역할을 하고 있는 영동대교의 노후 상태를 볼 때 장기적인 구조물의 안전과 중차량의 증가로 인한 다리의 성능개선 여부를 결정할 필요가 있었고, 이에 1997년 11월에서 1998년 7월까지 정밀안전진단을 포함한 성능개선 타당성 조사 용역을 시행하였다. 그 결과 주형의 외측에 부식이 진행되고 있고 콘크리트 슬래브 하면에 백태현상이 있으나 구조물 안전에는 문제가 없으므로 보수·보강하여 사용 가능한 것으로 나타났다. 따라서 구조물의 장기적인 안전 제고를 위한 보수, 보강을 위해 1999년 4월에서 1999년 12월까지 실시설계를 시행하였으며, 그 결과에 의해 2000년에는 전체적인 보수보강이 시행중에 있다. [네이버 지식백과] 영동대교 [永東大橋] (한국민족문화대백과, 한국학중앙연구원)');
final review1 = Review(
  tourism: tourism1,
  id: 1,
  user: user1,
  score: 5.0,
  wirteTime: DateTime.now(),
  contents: '봄기운이 도는 완주, 익산여행, 오랜 절친들이랑 가볍게 떠나 힐링한 전완주 익산여행. 전주는 자주 갔지만 완주는 처음, 익산은 두번째 방문이었다. 기대와 설레임에 부응하는 전라북도의 기운과 선한 지역분들과의 접촉에 아직도 여행의 여운이 남아있다.',
  Images: [picSum(1000), picSum(1001), picSum(1002), picSum(1003), picSum(1004), picSum(1005),picSum(1005)],
);
final review2 = Review(
  tourism: tourism1,
  id: 2,
  user: user2,
  score: 4.0,
  wirteTime: DateTime.now(),
  contents: '목포에 사는 언니가 곧 캐나다로 떠나요. 어쩌면 언니와의 마지막 만남. 언니와 특별한 기억을 남기고 왔어요',
  Images: [picSum(1006), picSum(1005), picSum(1008)],
);
final review3 = Review(
  tourism: tourism1,
  id: 3,
  user: user3,
  score: 2.0,
  wirteTime: DateTime.now(),
  contents: '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',
  Images: [picSum(1009), picSum(1010), picSum(1011)],
);
final review4 = Review(
  tourism: tourism1,
  id: 1,
  user: user3,
  score: 2.0,
  wirteTime: DateTime.now(),
  contents: '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',
  Images: [picSum(1012)],
);
final review5 = Review(
  tourism: tourism1,
  id: 2,
  user: user3,
  score: 2.0,
  wirteTime: DateTime.now(),
  contents: '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',
  Images: [picSum(1013), picSum(1014)],
);
final review6 = Review(
  tourism: tourism1,
  id: 2,
  user: user3,
  score: 2.0,
  wirteTime: DateTime.now(),
  contents: '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',
  Images: [picSum(1015), picSum(1016), picSum(1019), picSum(1018)],
);


final restaurant1 = Restaurant(1,'배키욘방', '부산 서면', [picSum(686)],"'배키욘방'입니다.");
final restaurant2 = Restaurant(2,'생활맥주', '부산 동래', [picSum(687)],"'생활맥주'입니다.");
final restaurant3 = Restaurant(3,'해풍 가마솥', '부산 중구', [picSum(688)],"'해풍 가마솥'입니다.");
final restaurant4 = Restaurant(4,'해목', '남포동', [picSum(689)],"'해목'입니다.");
final restaurant5 = Restaurant(5,'웨이브온', '남포동', [picSum(692)],"'웨이브온'입니다.");
final restaurant6 = Restaurant(6,'로얄경약식&스테이크', '부산 기장군', [picSum(690)],"'로얄경약식&스테이크'입니다.");
final restaurant7 = Restaurant(7,'해물 칼국수', '해운대', [picSum(691)],"'해물 칼국수'입니다.");
final restaurant8 = Restaurant(8,'광안 샤브샤브', '남포동', [picSum(693)],"'광안 샤브샤브'입니다.");
final restaurant9 = Restaurant(9,'해피스토리', '부산', [picSum(694)],"'해피스토리'입니다.");

final schedule1 = Schedule(days: [DateTime.now().add(const Duration(days: 3)),
  DateTime.now().add(const Duration(days: 5)),], area: hamaArea7, pickTourism: [tourism3,tourism4,tourism5] ,pickRestaurant:[restaurant2,restaurant3,restaurant4],pickMyArea: [tourism3,restaurant2,tourism4,restaurant3,tourism5,restaurant4]);
final category1 = CategoryIcon(icon: Icons.home, category: '숙소');
final category2 = CategoryIcon(icon: Icons.airplanemode_active_rounded, category: '항공');
final category3 = CategoryIcon(icon: Icons.directions_car, category: '항공');
final category4 = CategoryIcon(icon: Icons.confirmation_num, category: '관광');
final category5 = CategoryIcon(icon: Icons.restaurant, category: '식비');
final category6 = CategoryIcon(icon: Icons.shopping_bag, category: '쇼핑');
final category7 = CategoryIcon(icon: Icons.category, category: '기타');

final categoryList = [category1,category2,category3,category4,category5,category6,category7];
final areaList = [hamaArea1,hamaArea2,hamaArea3,hamaArea4,hamaArea5,hamaArea6,hamaArea7,hamaArea8, hamaArea1,hamaArea2,hamaArea3,hamaArea4,hamaArea5,hamaArea6,hamaArea7,hamaArea8,];
final diaryList=[diary1,diary2,diary3,diary1,diary2,diary3,diary1,diary2,diary3,diary1,diary2,diary3];
final tourismList=[tourism1,tourism2,tourism3,tourism4,tourism5,tourism6,tourism7,tourism8,tourism9,tourism1,tourism2,tourism3,tourism4,tourism5,tourism6,tourism7,tourism8,tourism9];
final tourismDetailList = [tourismDetail1];
final reviewList = [review2,review1,review3,review4,review5,review6];
final restaurantList =[restaurant1,restaurant2,restaurant3,restaurant4,restaurant5,restaurant6,restaurant7,restaurant8,restaurant9,restaurant1,restaurant2,restaurant3,restaurant4,restaurant5,restaurant6,restaurant7,restaurant8,restaurant9];
final scheduleList = [schedule1];

