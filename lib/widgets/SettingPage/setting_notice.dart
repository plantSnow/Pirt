import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingNotice extends StatefulWidget {
  const SettingNotice({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<SettingNotice> createState() => _SettingNotice();
}

class _SettingNotice extends State<SettingNotice> {
  bool switchValue1 = true;
  bool switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
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
          const Divider(
            // indent: 10,
            thickness: 1,
            height: 20,
          ),
          //好像用row没法再套一层 ListTile有最小高度 为了一致就都用了ListTile
          ListTile(
            dense: true,
            leading: const Text(
              "允许提示通知",
              style: TextStyle(
                  // height: 2,
                  color: Color.fromARGB(255, 29, 29, 32),
                  fontSize: 16),
            ),
            trailing: CupertinoSwitch(
                activeColor: const Color(0xff5b67ca),
                value: switchValue1,
                onChanged: (value) {
                  setState(() {
                    switchValue1 = value;
                  });
                }),
            //TODO：按钮触发事件写在onTap的括号里面
            onTap: () {
              setState(() {
                switchValue1 = !switchValue1;
              });
            },
          ),
          const Card(
            margin: EdgeInsets.all(4),
          ), //占格变宽
          ListTile(
            leading: const Text(
              "允许响铃通知",
              style: TextStyle(
                  // height: 2,
                  color: Color.fromARGB(255, 29, 29, 32),
                  fontSize: 16),
            ),
            trailing: CupertinoSwitch(
                activeColor: const Color(0xff5b67ca),
                value: switchValue2,
                onChanged: (value) {
                  setState(() {
                    switchValue2 = value;
                  });
                }),
            onTap: () {
              setState(() {
                switchValue2 = !switchValue2;
              });
            },
          ),
        ]),
      ),
    ]);
  }
}
