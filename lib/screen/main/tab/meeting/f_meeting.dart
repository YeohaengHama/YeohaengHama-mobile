import 'package:fast_app_base/screen/review/picker/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MeetingFragment extends StatefulWidget {
  const MeetingFragment({super.key});

  @override
  State<MeetingFragment> createState() => _MeetingFragmentState();
}

class _MeetingFragmentState extends State<MeetingFragment> {
  String _responseData = '';

  @override
  Widget build(BuildContext context) {
    return DemoPage();
 }


}
