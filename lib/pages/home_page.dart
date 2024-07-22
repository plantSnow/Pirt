import 'package:flutter/material.dart';
import 'package:pirt/widgets/HomePage/info_display.dart';
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
      width: screenWidth,
      // TODO: 这里的页面滑动方式不对
      child: ListView(
        children: [
          const TopBar(),  
          SizedBox(
            height: (50/812)*screenHeight,), 
          const TextShow(boldText: '下一趟旅途', text: '左滑查看过往留下的痕迹~'), 
          const InfoDisplay(info: '出行时间 - 2024/3/2\n距今还有 11 天\n目的地 - 广东/深圳\n天气： 获取中···',), 
          const TextShow(boldText: 'DAY1', text: '上拉查看全部行程安排'), 
          // SizedBox(
            // width: screenWidth,
            // height:(250/812)*screenHeight,
            // child: ListView(
              // children: const [
                // ListTile(
                   const PlanDetails(titleByUser: '长沙南 - 深圳北', timeByUser: '07:25 - 10:40', displayType:  0,),
                   const PlanDetails(titleByUser: '长沙南 - 深圳北', timeByUser: '07:25 - 10:40', displayType: 1,),
                   const PlanDetails(titleByUser: '长沙南 - 深圳北', timeByUser: '07:25 - 10:40', displayType: 2,),
                   const PlanDetails(titleByUser: '长沙南 - 深圳北', timeByUser: '07:25 - 10:40', displayType: 0,),
                   const PlanDetails(titleByUser: '长沙南 - 深圳北', timeByUser: '07:25 - 10:40', displayType: 2,),
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