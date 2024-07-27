import 'package:flutter/material.dart';

// 这个是留在这里占位置用的, 其实根本还没用上
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

//   State<SettingPage> createState() => _SettingPageState();
// }

// class _SettingPageState extends State<SettingPage> {
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
        children: const [SettingContainer()],
      ),
    );
  }
}

class SettingContainer extends StatelessWidget {
  const SettingContainer({super.key});

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
                indent: 10,
                thickness: 1,
                height: 26,
              ),
              Text(
                "   简体中文",
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
