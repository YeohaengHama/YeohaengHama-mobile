import 'package:fast_app_base/entity/area/vo_hama_area.dart';
import 'package:fast_app_base/entity/diary/vo_diary.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

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

final diary1 = Diary(user1, 1, '봄기운이 도는 완주, 익산여행', '오랜 절친들이랑 가볍게 떠나 힐링한 전완주 익산여행. 전주는 자주 갔지만 완주는 처음, 익산은 두번째 방문이었다. 기대와 설레임에 부응하는 전라북도의 기운과 선한 지역분들과의 접촉에 아직도 여행의 여운이 남아있다.',[picSum(423),]);
final diary2 = Diary(user2, 2, '목포여행', '목포에 사는 언니가 곧 캐나다로 떠나요. 어쩌면 언니와의 마지막 만남. 언니와 특별한 기억을 남기고 왔어요',[picSum(309),picSum(310)]);
final diary3 = Diary(user3, 3, '동기들과 제주여행', '한 살이라도 활기 넘칠 때 제주 많이 나녀오기! 그리고 운전은 필수지만 독박 운전 하지 말기~',[picSum(319),picSum(320),picSum(321)]);


final areaList = [hamaArea1,hamaArea2,hamaArea3,hamaArea4,hamaArea5,hamaArea6,hamaArea7,hamaArea8 ];
final diaryList=[diary1,diary2,diary3,diary1,diary2,diary3];