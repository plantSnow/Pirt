import 'package:flutter/material.dart';

class AddPlan extends StatelessWidget {
  const AddPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: 这里迟早给它拆成小组件哼哼:)
          Text(
            "计划名称", 
            style: TextStyle(
              color: Color(0xff8a8bb3), 
              fontFamily: 'DingTalk', 
              fontSize: 14, 
            ),
          ), 
          TextField(),
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0xff8a8bb3), 
              fontFamily: 'DingTalk', 
              fontSize: 14, 
            ),
          ), 
          TextField(), 
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0xff8a8bb3), 
              fontFamily: 'DingTalk', 
              fontSize: 14, 
            ),
          ), 
          TextField(), 
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0xff8a8bb3), 
              fontFamily: 'DingTalk', 
              fontSize: 14, 
            ),
          ), 
          TextField(), 
          Divider(), 
          
        ],
      ); 
  }
}
