![스크린샷 2024-08-07 오후 4 16 17](https://github.com/user-attachments/assets/b4a226b4-66db-4e1a-8771-5034f827ff7f)

![스크린샷 2024-08-07 오후 6 15 15](https://github.com/user-attachments/assets/bf325cca-6cb0-48dc-8b41-6f97801b28fb)
![스크린샷 2024-08-07 오후 6 15 29](https://github.com/user-attachments/assets/059b9aa3-029c-478b-ab2a-af52c5ba83de)


💡 여행에 필요한 모든 기능을 한 곳에서 끝내는 것이 프로젝트의 목적입니다!

관광지, 맛집 검색, 일정 계획, 대중교통 정보, 길 찾기, 가계부(자동 정산, 통계) 채팅, 일기, 숏츠를 한 번에!             

프로젝트 이름, 아이콘, Figma를 이용한 UI/UX 설계, 모바일 개발에 있어서 필요한 모든 부분은 1인으로 진행 하였습니다

---

### 기능

- **회원가입 & 로그인** (프로필 사진 선택, 촬영)
- **프로필 편집** (프로필 사진 촬영, 수정, 닉네임 변경)
- **여행 일정등록, 수정, 삭제** (날짜, 여행 스타일, 지역)
- **여행일기** (일정에 포함된 장소와 리뷰 제공, 해당 일기에 포함된 일정을 내 일정에 담아오기)
- **일행 초대** (제작한 일정에 함께할 일행 초대)
- **제작일정확인** (지도에 각 날짜별로 계획한 장소들을 선으로 이어서 동선을 확인)
- **채팅** (함께하는 일행들과의 채팅방 제공)
- **가계부** (카카오톡 정산하기와 같이 1/N 자동 정산 및 직접 입력 제공, 그래프를 통한 소비 패턴 확인, 일정에 포함된 인원들 개인마다의 대표 결제금액, 실제 소비금액, 누가 누구에게 얼마를 보내야 하는지 자동 정산하는 기능 제공)
- **마이페이지** (내 여행, 내 리뷰, 내 여행일기)
- **장소 담기** (마음에 드는 장소를 장바구니에 담아두고, 담은 장소를 골라 일정에 추가할 수 있는 기능)
- **여행지 상세 정보** (해당 장소에 대한 정보 확인, 지도를 통한 위치 확인, 현재 일정에 포함된 날짜별로 담긴 장소들의 위치와, 해당 장소의 위치를 비교하여 일정에 추가, 사용자들이 작성한 리뷰 확인, 해당 장소에 작성된 네이버 블로그 포스트 WebView 제공, 장소 담기)
- **길찾기** (주변 관광지 탐색, 내 위치 불러오기, 대중교통, 자동차 경로 및 소요시간 확인)
- **숏츠** (영상 녹화, 영상 편집, 영상 등록, 댓글 등록, 조회)

---

### 스킬

해당 프로젝트를 진행하며 Flutter의 다양한 패키지들을 사용했습니다.  
상태관리: `Freezed`, `riverPod` 및 `hooks_riverpod`을 활용하였습니다.  
`http`, `dio`를 활용한 `RestAPI` 연동  
`webSocket` 연동, `디버깅`, `NullSafety` 처리, `비동기` 처리,  
`Jira`, `Git`을 활용한 `형상관리` 등

---

<aside>
💡 사용자의 입장에서 사용하기 좋은 인터페이스를 구현하고자 많은 고민을 했습니다.
비동기 과정에서 생기는 대기시간 동안의 시각적 처리, 다양한 애니메이션 효과는 사소한 디테일을 높이고, 좋은 사용감을 경험하게 하는 방법이라고 생각합니다.
</aside>

### 비동기 처리 과정에서, 대기시간 동안의 다양한 화면 처리

![IMG_0420](https://github.com/user-attachments/assets/fe2bd207-7a3c-4440-8823-d9a729dca184)
*상세정보 대기화면*

![IMG_0458](https://github.com/user-attachments/assets/66a3d4d9-fae1-4b10-993d-6203bd8e574b)
*리뷰작성 대기화면*

![IMG_0447](https://github.com/user-attachments/assets/afa7c484-e560-4a12-b76c-253952d7f5e5)
*댓글작성 대기화면*


---

### 리스트를 불러오는 과정에서 시각적 애니메이션 효과

![IMG_0473](https://github.com/user-attachments/assets/0b8af46d-27fd-4462-91ee-d940a4452392)


### 여행 추천 땡겨요 인터렉션 구현
![IMG_0467](https://github.com/user-attachments/assets/60d2d476-d7c5-4d46-a8bb-92712c3fe1d5)



### NullSafety를 위한 처리
![IMG_0477](https://github.com/user-attachments/assets/0cce52d9-bbd6-4454-8798-2dc3aa4f44b3)


---

## 디자인

[Figma 링크](https://www.figma.com/design/efTiVZ8KN8RfDMgjbmChBm/Real-Estate-App-Onboarding-Screens-(Community)?node-id=8-113&t=pVIs5tVRyP9p9wDV-1)

## GitHub 저장소

[https://github.com/YeohaengHama/YeohaengHama-mobile.git](https://github.com/YeohaengHama/YeohaengHama-mobile.git)
