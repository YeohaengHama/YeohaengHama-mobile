import 'dart:io';
import 'dart:convert';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/data/entity/account/vo_account.dart';
import 'package:fast_app_base/data/network/user_api.dart';
import 'package:fast_app_base/screen/Account/w_text_widget.dart';
import 'package:fast_app_base/screen/dialog/d_select_image_source.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/entity/vo_user.dart';

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
  File? profileFile;
  final UserApi _userApi = UserApi();


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
  Future<void> _postData() async {
    final account = Account(
      email: idController.text,
      pw: pwController.text,
      photoUrl: profileFile != null ? base64Encode(profileFile!.readAsBytesSync()) : null,
      nickName: nameController.text,
    );

    await _userApi.postAccountData(account);
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
              Stack(
                children: [
                Tap(
                  onTap: () async {
                    final selectedSource = await SelectImageSourceDialog().show();

                    if(selectedSource==null){
                      return;
                    }
                    final file = await ImagePicker().pickImage(source: selectedSource);
                    if (file == null){
                      return;
                    }
                    setState(() {
                      profileFile = File(file.path);
                    });

                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.mainPurple,
                    child: profileFile != null
                        ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(profileFile!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                        : const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),

                ),
                const Positioned(
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
              GestureDetector(
                onTap: isButtonEnabled ? _postData : null,
                child: RoundedContainer(
                  backgroundColor: isButtonEnabled ? AppColors.mainPurple : Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                  child: '완료'.text.bold.color(Colors.white).size(24).make(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
