import 'package:flutter/material.dart';
import '/widgets/HomePage/top_bar.dart';
import '/widgets/HomePage/text_show.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return SizedBox(
      child: Stack(
        children: [
          Column(
            children: [
              Positioned(
                left: 0.5*(1-360/375)*screenWidth, 
                top: 0.04*screenHeight,
                child: const TopBar(),  
              ),
              const TextShow(boldText: '下一趟旅途', text: '左滑查看过往留下的痕迹~'), 
              SizedBox(
                height: (245/812)*screenHeight,
                width: (335/375)*screenWidth,
              ),
              const TextShow(boldText: 'DAY1', text: '上拉查看全部行程安排'), 
            ]
          )
        ]
      )
    );
  }
}