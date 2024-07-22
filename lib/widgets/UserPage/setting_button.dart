import 'package:flutter/material.dart';

class SettingBtn extends StatelessWidget {
  const SettingBtn({super.key});

  static const List colorsToBeUsed = [
    [Color(0x3f858fe9), Color(0xff858fe9)], 
    [Color(0x3f7fc9e7), Color(0xff7fc9e7)]
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: 按钮形状颜色仍未调整好
    return OutlinedButton(
      // style: const ButtonStyle(
        // backgroundColor: null
        // side: MaterialStatePropertyAll(null)
      // ),
      onPressed: (){}, 
      child: Container(
        height: (138/812)*screenHeight,
        width: (138/375)*screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: colorsToBeUsed[1][0],
        ),
      )
    );
  }
}