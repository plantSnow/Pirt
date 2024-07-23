import 'package:flutter/material.dart';
import '../widgets/UserPage/setting_button.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            SizedBox(
              child: Image.asset(
                'assets/images/pirt_logo.png', 
                fit: BoxFit.cover,
              ),
            ), 
            const SizedBox(height: 30,), 
            const SettingBtn(btnChoose: 0,), 
            // const SettingBtn(btnColorChoose: 1,), 
            // const SettingBtn(btnColorChoose: 2,), 
            // const SettingBtn(btnColorChoose: 3,), 
            // const SettingBtn(btnColorChoose: 4,), 
            // GridView(gridDelegate: )
        //   GridView(
        //     gridDelegate: 
        //   ), 
        ],
      );
  }
}