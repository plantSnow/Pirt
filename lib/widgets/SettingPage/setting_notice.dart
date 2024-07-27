import 'package:flutter/material.dart';

class SettingNotice extends StatelessWidget {
  const SettingNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "通知设置",
                style: TextStyle(
                    // height: 2,
                    letterSpacing: 1,
                    color: Color(
                      0xff5b67ca,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                indent: 10,
                thickness: 1,
                height: 20,
              ),
              //TODO:做右侧的按钮 KeyEvent
              Text(
                "   允许提示通知",
                style: TextStyle(
                    height: 2,
                    color: Color.fromARGB(255, 29, 29, 32),
                    fontSize: 16),
              ),
              Card(
                margin: EdgeInsets.all(4),
              ), //占格变宽
              Text(
                "   允许提示通知",
                style: TextStyle(
                    height: 2,
                    color: Color.fromARGB(255, 29, 29, 32),
                    fontSize: 16),
              ),
            ]),
          ),
        ]);
  }
}
