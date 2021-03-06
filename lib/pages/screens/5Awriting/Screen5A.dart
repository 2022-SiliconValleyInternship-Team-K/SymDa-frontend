import 'package:flutter/material.dart';
import 'package:symda/pages/screens/5Awriting/components/imageGal.dart';
// import 'package:flutter/cupertino.dart';


import 'components/doneButton.dart';
import 'components/headerText.dart';
import 'components/weather.dart';
import 'components/writingField.dart';
import 'package:symda/src/theme.dart';

class Screen5A extends StatefulWidget {
  const Screen5A({Key? key}) : super(key: key);

  @override
  State<Screen5A> createState() => _Screen5AState();
}

class _Screen5AState extends State<Screen5A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0EAD2),
      appBar: AppBar(
        // title: Text('일기 작성'),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Color(0xffF0EAD2),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(children: [
              HeaderText(), // 맨 상단의 '오늘 하루는 어땠나요?' 문구
       
         
              Weather(), // 오늘의 날씨는?
              WritingField(), // 일기 작성란
              _buildTop(), // 간격 조정
Text(
                  '오늘 하루의 사진을 추가해볼까요?',
                  style: textTheme().headline3,
                  overflow: TextOverflow.ellipsis,
                ), 
                _buildTop(),
              ImagePic(),

              _buildTop(), // 간격 조정
              DoneButton(), // 작성 완료 버튼 => Screen5B로 이동
            ]),
          ),
        ),
      ),
    );
  }
}

Widget _IMGfromGal() {
  return Container(
    color: Colors.pink,
    height: 80,
    width: 80,
  );
}

Widget _IMGfromCam() {
  return Container(
    color: Colors.pink,
    height: 80,
    width: 80,
  );
}

Padding _buildTop() {
  // 간격 조정용
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 7,
      // horizontal: 16,
    ),
  );
}
