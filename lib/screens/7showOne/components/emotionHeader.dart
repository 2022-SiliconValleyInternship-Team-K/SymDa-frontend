import 'package:flutter/material.dart';
import 'package:symda_application_1/theme.dart';

// 5.4에서 감정 스티커가 보이는 공간

class EmotionHeader extends StatelessWidget {
  const EmotionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '당신의 기분은',
                style: textTheme().bodyText1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  'src/images/joy_white.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'src/images/sad_white.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'src/images/anger_white.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'src/images/fear_white.png',
                  height: 50,
                  width: 50,
                ),
              ]),
            ],
          )),
    );
  }
}