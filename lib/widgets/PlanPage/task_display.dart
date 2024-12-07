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
            height: (120/812)*screenHeight,
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
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 左侧竖条
                      LeftNarrowBar(
                        displayType: displayType, 
                        // 竖条高度
                        barHeight: (45/812)*screenHeight
                      ), 
                      NameAndTimeinPlanDetailsWithIcon(
                        title: title, 
                        time: time, 
                        displayType: displayType, 
                        sizeType: 1
                      ),  
                    ]
                  ), 
                  Row(children: [
                    // TODO: 这里用按钮无法显示文字(大小不够, 文字又不能太小)， 改成无效果的 Container 不可编辑就行了吧, 内容重新看看改改
                    Container(
                      height: (20/812)*screenHeight,
                      width: (10/375)*screenWidth,
                      color: Colors.amber,
                    )
                  ])
                ]),
                SizedBox(width: (40/375)*screenWidth), 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    const Icon(Icons.arrow_circle_right_outlined),  
                    SizedBox(height: (20/812)*screenHeight,), 
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