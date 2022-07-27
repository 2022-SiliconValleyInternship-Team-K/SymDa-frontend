import 'package:flutter/material.dart';
import 'package:symda/src/theme.dart';

import "dart:math";

var i;
  T getRandomElement<T>(List<T> list) {
  final random = new Random();
  i = random.nextInt(list.length);
  return list[i];
}
int questionid(){
  return i;
}

String rand() {
  var list = [
    '오늘 하루는 어땠어?',
    '오늘 가장 생각나는 순간은 언제야?',
    '오늘 가장 잘 활용한 아이템이 있다면 뭐야?',
    '오늘의 작은 기쁨은 뭐였어?',
    '오늘 힘든 일은 없었어?'
  ];
  var element = getRandomElement(list);
  // print(element);
  return element;
}
String dailyQ = rand();

class DailyQ extends StatefulWidget {
  const DailyQ({Key? key}) : super(key: key);

  @override
  State<DailyQ> createState() => DailyQState();
}

class DailyQState extends State<DailyQ> {
 static var qeustionI=questionid();
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Color(0xffDDE5B6),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
      
                Text(
                  '$dailyQ',
                  // 'hello',
                  style: TextStyle(color: Color(0xff6C584C)),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          
        ),
      ),
    );
  }





}
