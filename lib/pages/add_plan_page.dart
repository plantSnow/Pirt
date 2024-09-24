import 'package:flutter/material.dart';
// import '../widgets/AddPlanPage/ok_button.dart';

class AddPlan extends StatelessWidget {
  const AddPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(), //返回按钮
          title: const Text("新建计划"),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: ListTile(
                  leading: Icon(Icons.grade_outlined),
                  title: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '名称',
                    ),
                  ),
                )),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.calendar_month_outlined),
                title: Text("日期"),
                // TODO:放个日历
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.place_outlined),
                title: Text("地点"),
                // TODO:加个对话框
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.watch_later_outlined),
                title: Text("时间"),
                // TODO:加个对话框
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.style_outlined),
                title: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '简介',
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.label_outline),
                title: Text("类型"),
                // TODO:加个单选器
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: ListTile(
                leading: Icon(Icons.bookmark_add_outlined),
                title: Text("标签"),
                // TODO:加个复选器
              ),
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: ListTile(
                // leading: Icon(Icons.place),
                title: Text("按钮"),
                // TODO:把按钮挪过来
              ),
            ),
          ],
        ));
  }
}

// 这个是一个输入栏, 还没做的很完善, (没有传参)
class MyTextField extends StatelessWidget {
  final String question;

  const MyTextField({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        // width: screenWidth,
        // height: 0.12 * screenHeight,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
