import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/Account/w_text_widget.dart';
import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}
class _JoinScreenState extends State<JoinScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  final rpwController = TextEditingController();
  final nameController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _updateButtonState();
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled =
          idController.text.isNotEmpty &&
              pwController.text.isNotEmpty &&
              rpwController.text.isNotEmpty &&
              nameController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: '회원 가입'.text.bold.color(AppColors.mainPurple).make(),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Height(10),
              const Stack(children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.mainPurple,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: AppColors.secondGrey,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              const Height(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    child: TextWidget(
                      textController: idController,
                      addText: '아이디 입력',
                      boxWidth: loginWidth - 20,
                      onChanged: (value) {
                        _updateButtonState();
                      },
                    ),
                  ),
                  RoundButton(
                      text: '중복',
                      borderRadius: 5,
                      bgColor: Colors.white,
                      borderColor: AppColors.forthGrey,
                      textColor: AppColors.forthGrey,
                      height: 35,
                      onTap: () {})
                ],
              ),
              const Line(
                color: AppColors.forthGrey,
                height: 0.5,
                width: loginWidth - 20,
              ),
              const Height(10),
              TextWidget(
                textController: pwController,
                addText: '비밀번호',
                pw: true,
                boxWidth: loginWidth - 20,
                onChanged: (value) {
                  _updateButtonState();
                },
              ),
              const Line(
                color: AppColors.forthGrey,
                height: 0.5,
                width: loginWidth - 20,
              ),
              const Height(10),
              TextWidget(
                textController: rpwController,
                addText: '비밀번호 확인',
                pw: true,
                boxWidth: loginWidth - 20,
                onChanged: (value) {
                  _updateButtonState();
                },
              ),
              const Line(
                color: AppColors.forthGrey,
                height: 0.5,
                width: loginWidth - 20,
              ),
              const Height(10),
              TextWidget(
                textController: nameController,
                addText: '닉네임',
                boxWidth: loginWidth - 20,
                onChanged: (value) {
                  _updateButtonState();
                },
              ),
              const Line(
                color: AppColors.forthGrey,
                height: 0.5,
                width: loginWidth - 20,
              ),
              const Height(20),
              RoundedContainer(
                backgroundColor: isButtonEnabled ? AppColors.mainPurple : Colors.grey,
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: '완료'.text.bold.color(Colors.white).size(24).make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
