import 'package:flutter/material.dart';

class AddPlan extends StatelessWidget {
  const AddPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Text(
            "计划名称", 
            style: TextStyle(
              color: Color(0x008a8bb3)
            ),
          ), 
          TextField(),
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0x008a8bb3)
            ),
          ), 
          TextField(), 
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0x008a8bb3)
            ),
          ), 
          TextField(), 
          Divider(), 
          Text(
            "出行日期", 
            style: TextStyle(
              color: Color(0x008a8bb3)
            ),
          ), 
          TextField(), 
          Divider(), 
          
        ],
      ); 
  }
}
