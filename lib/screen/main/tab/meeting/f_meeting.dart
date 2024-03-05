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
    return Scaffold(
      appBar: AppBar(
        title: Text('API 호출 예제'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _fetchData();
              },
              child: Text('API 호출'),
            ),
            SizedBox(height: 20),
            Text('API 응답: $_responseData'),
          ],
        ),
      ),
    );
  }


  Future<void> _fetchData() async {
    final url = 'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/account/1';

    try {
      final response = await http.get(Uri.parse(url)) ;

      if (response.statusCode == 200) {
        // 성공적으로 응답을 받았을 때의 처리
        setState(() {
          _responseData = response.body;
        });
      } else {
        // 실패했을 때의 처리
        setState(() {
          _responseData = 'API 호출에 실패했습니다. 상태 코드: ${response.statusCode}';
        });
      }
    } catch (e) {
      // 예외 발생 시의 처리
      setState(() {
        _responseData = '예외가 발생했습니다: $e';
      });
    }
  }
}

