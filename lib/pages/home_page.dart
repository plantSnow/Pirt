import 'package:flutter/material.dart';
import '../widgets/HomePage/top_bar.dart';
import '../widgets/HomePage/text_show.dart';
import '../widgets/HomePage/plan_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return SizedBox(
      height: screenHeight,
      child: ListView(
        children: [
          const TopBar(),  
          SizedBox(height: (50/812)*screenHeight,), 
          const TextShow(boldText: '下一趟旅途', text: '左滑查看过往留下的痕迹~'), 
          SizedBox(
            height: (245/812)*screenHeight,
            width: (335/375)*screenWidth,
          ),
          const TextShow(boldText: 'DAY1', text: '上拉查看全部行程安排'), 
          // SizedBox(
            // width: screenWidth,
            // height:(250/812)*screenHeight,
            // child: ListView(
              // children: const [
                // ListTile(
                   const PlanDetails(displayType: 0,),
                   const PlanDetails(displayType: 1,),
                   const PlanDetails(displayType: 2,),
                   const PlanDetails(displayType: 0,),
                   const PlanDetails(displayType: 2,),
                  // trailing: Icon(MyIcons.details, color: Colors.black,),
                // ), 
              // ],
            // )
          // )
        ]
      )
    );
  }
}