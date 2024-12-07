import 'package:flutter/material.dart';
import './transportation_divider.dart';
import './task_display.dart';

class TaskList extends StatelessWidget {

  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {  
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (450/812)*screenHeight,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          TaskDisplay(
            displayType: 0, 
            title: '宝安机场',
            time: '7: 00'
          ), 
          TransportationDivider(),
          TaskDisplay(
            displayType: 0, 
            title: '宝安机场',
            time: '7: 00'
          ), 
          // TransportationDivider(), 
          TaskDisplay(
            displayType: 0, 
            title: '宝安机场',
            time: '7: 00'
          ), 
        ]
      )
    );
  }
}