import 'package:flutter/material.dart';

// 用户页面的五个按钮, 参数 btnChoose 的值取0~4对应了5个不同按钮
class SettingBtn extends StatelessWidget {
  final int btnChoose;
  const SettingBtn({super.key, required this.btnChoose});

  static const List colorsToBeUsed = [
    [Color(0x3f858fe9), Color(0xff858fe9)], 
    [Color(0x3f7fc9e7), Color(0xff7fc9e7)], 
    [Color(0x3fffe4e4), Color(0xffe77d7d)], 
    [Color(0x3fcbf8d7), Color(0xff81e89e)], 
    [Color(0x3f858fe9), Color(0xff858fe9)], 
  ];

  static const iconList = [
    Icons.calendar_month_outlined, 
    Icons.work_outline_rounded, 
    Icons.person_outline_rounded, 
    Icons.location_on_outlined, 
    Icons.settings, 
  ];

  static const btnText = [
    '旅行计划', '工具箱', '个人信息', '城市足迹', '设置'
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: 按钮按下触发路由
    return RawMaterialButton(
      onPressed: (){}, 
      child: Container(
        height: (138/812)*screenHeight,
        width: (138/375)*screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: colorsToBeUsed[btnChoose][0],
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.6),
              child: Container(
                width: (48/375)*screenWidth,
                height: (48/812)*screenHeight,
                decoration: BoxDecoration(
                  color: colorsToBeUsed[btnChoose][1], 
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(
                  iconList[btnChoose], 
                  color: Colors.white,
                ),
              )
            ), 
            Align(
              alignment: Alignment(0, (btnChoose == 0 || btnChoose == 3)? 0.6 : 0.5),
              child: ((btnChoose == 0) || (btnChoose == 3))? SizedBox(
                height: (48/812)*screenHeight,
                child: Column( 
                  children: [
                    Text(
                      btnText[btnChoose], 
                      style: const TextStyle(
                        color: Color(0xff10275a), 
                        fontWeight: FontWeight.w800
                      ),
                    ), 
                    Text(
                      btnChoose == 0? '总数： ${4}': '点亮：${4}', //TODO: 这里的数据来自后端传参
                      style: const TextStyle(
                        color: Color(0xff393939)
                      ),
                    ), 
                  ]
                )
              ): Text(
                btnText[btnChoose], 
                style: const TextStyle(
                  color: Color(0xff10275a), 
                  fontWeight: FontWeight.w800
                ),
              )
            )
          ],
        ),
      )
    );
  }
}