import 'package:flutter/material.dart';
import '../widgets/SettingPage/setting_language.dart';
import '../widgets/SettingPage/setting_notice.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("设置"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SettingLanguage(),
          const Divider(
            color: Colors.white,
          ),
          SettingNotice()
        ],
      ),
    );
  }
}
