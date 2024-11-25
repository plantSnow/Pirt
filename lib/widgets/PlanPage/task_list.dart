import 'package:flutter/material.dart';
import './task_display.dart';

class TaskList extends StatelessWidget {

  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {  
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: (356/812)*screenHeight,
      child: ListView(
        children: const [
          TaskDisplay(displayType: 0), 
        ]
      )
    );
  }
}