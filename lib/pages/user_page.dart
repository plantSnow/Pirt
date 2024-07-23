import 'package:flutter/material.dart';
import '../widgets/UserPage/setting_button.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO: 留给头像框和个性签名的 SizedBox, 排版基本已经完成
          SizedBox(
            height: (250/812)*screenHeight,
          ), 
          // 按钮排列, 没有使用 GridView, 没必要
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                const SettingBtn(btnChoose: 0), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtn(btnChoose: 2), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtn(btnChoose: 4), 
              ],), 
              SizedBox(width: (20/375)*screenWidth,), 
              Column(children: [
                const SettingBtn(btnChoose: 1), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtn(btnChoose: 3), 
                SizedBox(height: (158/812)*screenHeight,), 
              ],), 
            ]
          )
        ],
      ),
    );
  }
}