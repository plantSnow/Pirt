import 'package:flutter/material.dart';
import '../widgets/AddPlanPage/ok_button.dart';

// 这个是一个输入栏, 还没做的很完善, (没有传参)
class MyTextField extends StatelessWidget {
  final String question;

  const MyTextField({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        width: screenWidth,
        height: 0.12 * screenHeight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            question,
            style: const TextStyle(
              color: Color(0xff8a8bb3),
              fontFamily: 'DingTalk',
              fontSize: 14,
            ),
          ),
          const TextField(),
          const Divider(),
        ]),
      )
    ]);
  }
}

class AddPlan extends StatelessWidget {
  const AddPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),//返回按钮
      ),
      body: ListView(//列表
        padding: const EdgeInsets.all(20), 
        children: const [
        MyTextField(question: "计划名称"),
        MyTextField(question: "出行日期"),
        MyTextField(question: "出行日期"),
        MyTextField(question: "出行日期"),
        OKButton(), 
      ]),
    );
  }
}
