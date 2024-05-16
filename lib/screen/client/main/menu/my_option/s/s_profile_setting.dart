import 'dart:io';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/data/entity/account/vo_current_account.dart';
import 'package:fast_app_base/data/memory/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../../data/network/diary_api.dart';
import '../../../../../../data/network/user_api.dart';

import '../../../../../Account/w_text_widget.dart';
import '../../../../dialog/d_select_image_source.dart';

class ProfileSettingScreen extends ConsumerStatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileSettingScreen> createState() =>
      _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends ConsumerState<ProfileSettingScreen> {
  final nameController = TextEditingController();

  late final _accountProvider = ref.read(accountProvider);
  final UserApi _userApi = UserApi();
  File? profileFile;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    nameController.text = _accountProvider!.nickName;
    final photoUrl = _accountProvider?.photoUrl;
    if (photoUrl != null) {
      _loadImage(photoUrl);
    }
  }

  Future<void> _postData() async {
    final account = CurrentAccount(
      id: _accountProvider!.id,
      nickName: nameController.text,
      photoUrl: profileFile != null ? profileFile!.path : null,
    );

    await _userApi.updateAccount(account, ref);
  }

  Future<void> _loadImage(String photoUrl) async {
    try {
      final response = await http.get(Uri.parse(photoUrl));
      if (response.statusCode == 200) {
        final bytes = response.bodyBytes;
        final appDir = await getTemporaryDirectory();
        final file = File('${appDir.path}/profile_image.jpg');
        await file.writeAsBytes(bytes);
        setState(() {
          profileFile = file;
        });
      } else {
        // Handle error
        print('Failed to load image: ${response.statusCode}');
      }
    } catch (e) {
      // Handle error
      print('Error loading image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('프로필 설정',
                style: TextStyle(color: AppColors.primaryGrey, fontSize: 18)),
            centerTitle: false,
            leading: IconButton(
              onPressed: () async {
                final diaryApi = ref.read(diaryApiProvider);
                await diaryApi.showAllDiary(ref);
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Stack(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Tap(
                      onTap: () async {
                        final selectedSource =
                        await SelectImageSourceDialog().show();

                        if (selectedSource == null) {
                          return;
                        }
                        final file = await ImagePicker()
                            .pickImage(source: selectedSource);
                        if (file == null) {
                          return;
                        }
                        setState(() {
                          profileFile = File(file.path);
                        });
                      },
                      child: Stack(
                        children: [
                          CircleAvatar(
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
                                : ClipOval(
                              child: Image.asset(
                                '$basePath/icon/colorHama.png',
                                width: 120,
                                height: 120,
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
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextWidget(
                      textController: nameController,
                      addText: '닉네임',
                      boxWidth: loginWidth - 20,
                      onChanged: (value) {},
                    ),
                    const Line(
                      color: AppColors.forthGrey,
                      height: 0.5,
                      width: loginWidth - 20,
                    ),
                    const SizedBox(height: 20),
                    Tap(
                      onTap: () async {
                        setState(() {
                          _isLoading = true;
                        });

                        await _postData();

                        setState(() {
                          _isLoading = false;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AppColors.mainPurple,
                            content: Text('프로필 정보가 수정되었습니다.'),
                          ),
                        );

                        Navigator.pop(context);
                      },
                      child: RoundedContainer(
                        backgroundColor: AppColors.mainPurple,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 10),
                        child: const Text('완료',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (_isLoading)
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.3),
              ),
              Center(
                child: LoadingAnimationWidget.fourRotatingDots(
                  color: AppColors.mainPurple,
                  size: 100,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
