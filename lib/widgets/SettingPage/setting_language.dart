import 'package:flutter/material.dart';

class SettingLanguage extends StatelessWidget {
  const SettingLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "语言设置",
                style: TextStyle(
                    letterSpacing: 1,
                    color: Color(
                      0xff5b67ca,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                // indent: 10,
                thickness: 1,
                height: 20,
              ),
              ListTile(
                leading: Text(
                  "简体中文",
                  style: TextStyle(
                      height: 2,
                      color: Color.fromARGB(255, 29, 29, 32),
                      fontSize: 16),
                ),
              ),
            ]),
          ),
        ]);
  }
}
