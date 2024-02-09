import 'package:fast_app_base/screen/main/tab/home/vo/vo_hama_area.dart';

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




final areaList = [hamaArea1,hamaArea2,hamaArea3,hamaArea4,hamaArea5,hamaArea6,hamaArea7,hamaArea8 ];
