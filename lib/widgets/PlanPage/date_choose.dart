import 'package:flutter/material.dart';
import './calendar.dart';

class DateChoose extends StatelessWidget {
  const DateChoose({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all((20/375)*screenWidth),
      width: screenWidth,
      height: 0.15*screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
          Row(
            children: [
              const Text(
                '日期', 
                style: TextStyle(
                  color: Color(0xff10275a), 
                  fontFamily: 'ShuHei', 
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ), 
              const Calendar(calendarType: 2,), 
              Text(
                '${(DateTime.now().year)}/${(DateTime.now().month)}/${(DateTime.now().day)}', //TODO: 日期参数传入
                style: const TextStyle(
                  color: Color(0xff525f77),
                  fontSize: 16, 
                ),
              )
            ]
          ), 
          SizedBox(height: 0.06*screenHeight,), //TODO: 周视图日历实现不了, 自己实现太麻烦, 交给你了wxy, 嘻嘻
          // TODO: 做成 NavigationBar 我先做下面的了
          const Divider(), 
        ]
      )
    );
  }
}