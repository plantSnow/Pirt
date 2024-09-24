import 'package:flutter/material.dart';
import '../HomePage/plan_detail.dart';

class TaskDisplay extends StatelessWidget {
  final int displayType;
  final String title;
  final String time;
  const TaskDisplay({
    super.key, 
    required this.displayType, 
    required this.title, 
    required this.time, 
  });

  static const colorsToBeChosen = [
    [Color(0x338f99eb), Color(0xff8f99eb)],
    [Color(0x33e88b8c), Color(0xffe88b8c)],
    [Color(0x331ec1c3), Color(0xff1ec1c3)],
  ];
  static const textForThisButton = [
    ['车次查看', '闹钟设置'],
    ['物品备忘', '闹钟设置'],
    ['地点查询', '闹钟设置'],
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      return Container(
        padding: EdgeInsets.all((10/375)/screenWidth),
        child: Stack(children: [ 
          Container(
            width: (180/375)*screenWidth,
            height: (117/812)*screenHeight,
            margin: EdgeInsets.all((10/375)*screenHeight),
            decoration: BoxDecoration(
              color: const Color(0xfff5f8fd), 
              borderRadius: BorderRadius.circular(15)
            ),
          ), 
          Positioned(
            top: (50/812)*screenHeight, 
            left: (30/375)*screenWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 左侧竖条
                LeftNarrowBar(
                  displayType: displayType, 
                  barHeight: (57/812)*screenHeight
                ), 
                NameAndTimeinPlanDetailsWithIcon(
                  title: title, 
                  time: time, 
                  displayType: displayType, 
                  sizeType: 1
                ),  
                SizedBox(width: (40/375)*screenWidth), 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    // SizedBox(width: (75/375)*screenWidth,), 
                    const Icon(Icons.arrow_circle_right_outlined),  
                    SizedBox(height: (20/812)*screenHeight,), 
                    // MyTextButton(
                    //   textForButton: textForThisButton[displayType][0], 
                    //   colorsForButton: colorsToBeChosen[displayType], 
                    //   size: 1
                    // ), 
                    // SizedBox(width: (15/375)*screenWidth,), 
                    // MyTextButton(
                    //   textForButton: textForThisButton[displayType][1], 
                    //   colorsForButton: colorsToBeChosen[displayType], 
                    //   size: 1
                    // )
                    const Icon(Icons.alarm)
                  ],
                ), 
              ],
          ),
        )
      ])
    );
  }
}