import 'package:flutter/material.dart';

// 文字与图标显示
class NameAndTimeinPlanDetailsWithIcon extends StatelessWidget {
  final int displayType;
  final String title;
  final String time;
  final int sizeType;
  const NameAndTimeinPlanDetailsWithIcon({
    super.key,
    required this.title,
    required this.time,
    required this.displayType, 
    required this.sizeType, 
  });

  static const colorList = [
    Color(0xff8f99eb),
    Color(0xffe88b8c),
    Color(0xff1ec1c3)
  ];

  static const iconList = [
    Icons.train_rounded,
    Icons.hotel_rounded,
    Icons.ramen_dining_rounded
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeType==0 
        ? (300 / 375) * screenWidth 
        : (70 / 375) * screenWidth,
      height: (60 / 812) * screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff2c406e),
              fontFamily: 'DingTalk', 
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          sizeType==0 ? 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Icon(
                iconList[displayType],
                color: colorList[displayType],
              ),
              SizedBox(
                child: Text(
                  time,
                  style: const TextStyle(
                    color: Color(0xff9aa8c7),
                    fontSize: 14,
                  ),
                ),
              ),
            ]
          ) : 
          Text(
            time,
            style: const TextStyle(
              color: Color(0xff9aa8c7),
              fontSize: 14,
            ),
          ),
        ]
      )
    );
  }
}

// 窄条
class LeftNarrowBar extends StatelessWidget {
  final int displayType;
  // final double barWidth;
  final double barHeight;
  const LeftNarrowBar({
    super.key,
    required this.displayType, 
    // required this.barWidth, 
    required this.barHeight, 
    });

  static const colorsToBeChosen = [
    [Color(0x338f99eb), Color(0xff8f99eb)],
    [Color(0x33e88b8c), Color(0xffe88b8c)],
    [Color(0x331ec1c3), Color(0xff1ec1c3)],
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: (10/375)*screenWidth),
      width: (3 / 375) * screenWidth,
      height: barHeight,
      decoration: BoxDecoration(
        color: colorsToBeChosen[displayType][1],
        borderRadius: BorderRadius.circular(15)),
    );
  }
}

// 文本按钮
// 每个展示框下方对应颜色的按钮
class MyTextButton extends StatelessWidget {
  final String textForButton;
  final List colorsForButton;
  final int sizeType;
  const MyTextButton({
    super.key, 
    required this.textForButton, 
    required this.colorsForButton, 
    required this.sizeType, 
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    late double btnWidth;
    late double btnHeight;

    switch(sizeType) {
      case 0: 
        btnWidth = (70/375)*screenWidth;
        btnHeight = (33/812)*screenHeight;
        break;
      case 1: 
        btnWidth = (40/375)*screenWidth;
        btnHeight = (30/812)*screenHeight;
      default: 
        break;
    }

    return SizedBox(
      width: btnWidth,
      height: btnHeight,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: colorsForButton[0],
          minimumSize: const Size(20, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          textForButton,
          style: TextStyle(
            color: colorsForButton[1],
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

// 首页展示框, 最下方的列表, 与 ListTile 不太兼容, 在 ListTile 中按钮会消失
class PlanDetails extends StatelessWidget {
  final int displayType;
  final String titleByUser;
  final String timeByUser;

  const PlanDetails(
      {super.key,
      required this.titleByUser,
      required this.timeByUser,
      required this.displayType});

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
          width: (325 / 375) * screenWidth,
          height: (120 / 812) * screenHeight,
          margin: EdgeInsets.all((5/812)*screenHeight),
          padding: EdgeInsets.all((5/375)*screenWidth),
          decoration: BoxDecoration(
            color: const Color(0xfff5f8fd),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(children: [
            Positioned(
              left: (7.5 / 375) * screenWidth,
              top: (10 / 812) * screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    // 左侧竖条
                    LeftNarrowBar(
                      displayType: displayType, 
                      barHeight: (40/812)*screenHeight), 
                    // 文字与图标展示, 抽离成 StatelessWidget
                    NameAndTimeinPlanDetailsWithIcon(
                      title: titleByUser,
                      time: timeByUser,
                      displayType: displayType,
                      sizeType: 0,
                    ),
                  ]),
                  Row(children: [
                    MyTextButton(
                      textForButton: textForThisButton[displayType][0],
                      colorsForButton: colorsToBeChosen[displayType], 
                      sizeType: 0,
                    ),  
                    SizedBox(
                      width: (15 / 375) * screenWidth,
                    ),
                    MyTextButton(
                      textForButton: textForThisButton[displayType][1],
                      colorsForButton: colorsToBeChosen[displayType], 
                      sizeType: 0,
                    ),
                    SizedBox(
                      width: (100 / 375) * screenWidth,
                    ),
                  ])
                ]
              ),
            ), 
          // 右上角图标按钮, 详细信息
            Positioned(
              right: (5/375)*screenWidth,
              top: (5/812)*screenHeight,
              // 右上角按钮, 弹出详细介绍窗口  
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.arrow_circle_right_outlined, 
                  color: Color(0xff9aa8c7),
                )
              )//const Calendar(calendarType: 2,)
            ), 
            // 右下角图标按钮, 新增活动
            Positioned(
              right: (5/375)*screenWidth,
              bottom: (5/812)*screenHeight,
              child: IconButton(
                onPressed: (){}, //TODO: 弹出窗口
                icon: const Icon(
                  Icons.add, 
                  color: Color(0xff9aa8c7),
                ), 
              )
            ),
          SizedBox(height: (15/812)*screenHeight,)
    ])
    );
  }
}