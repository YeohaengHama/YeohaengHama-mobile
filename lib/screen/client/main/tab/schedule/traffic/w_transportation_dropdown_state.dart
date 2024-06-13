import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransportationDropdown extends StatefulWidget {
  @override
  _TransportationDropdownState createState() => _TransportationDropdownState();
}

class _TransportationDropdownState extends State<TransportationDropdown> {
  String _selectedOption = '버스'; // 선택된 옵션을 저장하는 변수

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: _selectedOption,
        onChanged: (String? newValue) {
          setState(() {
            _selectedOption = newValue!;
          });
        },
        items:
            <String>['버스', '자차'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        underline: SizedBox());
  }
}
