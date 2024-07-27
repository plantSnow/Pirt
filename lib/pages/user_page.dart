import 'package:flutter/material.dart';
import 'package:pirt/widgets/UserPage/setting_button_withargs.dart';
import '../widgets/UserPage/setting_button_nonargs.dart';
import '../widgets/UserPage/user_photo.dart';

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
          SizedBox(
            height: (250/812)*screenHeight,
            child: const UserPhoto(userName: '种下大雪',personalQuote: '把酒祝东风，与君共从容...',), // TODO: 这里后端传参
          ), 
          // 按钮排列, 没有使用 GridView, 没必要
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                const SettingBtnWithArgs(btnChoose: 0, numToShow: 2,), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtn(btnChoose: 2), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtn(btnChoose: 4), 
              ],), 
              SizedBox(width: (20/375)*screenWidth,), 
              Column(children: [
                const SettingBtn(btnChoose: 1), 
                SizedBox(height: (20/812)*screenHeight,), 
                const SettingBtnWithArgs(btnChoose: 3, numToShow: 5,), 
                SizedBox(height: (158/812)*screenHeight,), 
              ],), 
            ]
          )
        ],
      ),
    );
  }
}