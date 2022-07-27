import 'package:flutter/material.dart';
import 'package:symda/src/theme.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      color: Color(0xffF0EAD2),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Row(children: [
          Text(
            '오늘 하루\n어떠셨나요?',
            style: TextStyle(
              fontFamily: 'NanumMyeongjo',
              fontSize: 30,
              color: Color(0xff6C584C),
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}