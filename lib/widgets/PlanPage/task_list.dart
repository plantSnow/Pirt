import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './task_display.dart';

class TaskList extends StatelessWidget {

  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {  
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (400/812)*screenHeight,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: (110/812)*screenHeight,
            // width: screenWidth,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TaskDisplay(
                  displayType: 0, 
                  title: '宝安机场',
                  time: '7: 00'
                ), 
              ]
            )
          )
        ]
      )
    );
  }
}