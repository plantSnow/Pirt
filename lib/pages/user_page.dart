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
          SizedBox(
            height: (250/812)*screenHeight,
          ), 
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