import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../widgets/PlanPage/searching_field.dart';
import '../../widgets/PlanPage/date_choose.dart';
import '../../widgets/PlanPage/task_list.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    String planSearch='00';
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    onSubmittedFunc(String value) {
      setState(() {
        planSearch = value;
      });
      print(planSearch); //TODO: 参数传出成功, 但是无法即时渲染组件
    }
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchingField(
            callBack: onSubmittedFunc
          ), 
          const DateChoose(),
          const TaskList(), 
        ],
      ),
    );
  }
}