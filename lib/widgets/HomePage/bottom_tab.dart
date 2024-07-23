import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/add_plan_page.dart';
import '/pages/user_page.dart';
import '/my_icons.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
// TODO: 翻页动画不好看(?)
  int _currentIndex=0;
  final List<Widget> _pages=const [
    HomePage(info: '出行时间 - 2024/3/2\n距今还有 11 天\n目的地 - 广东/深圳\n天气： 获取中···',), 
    AddPlan(), 
    User(), 
  ];
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _currentIndex==1? AppBar(
        leading: const BackButton(), 
        title: const Text(
          '新建', 
          style: TextStyle(
            fontFamily: 'ShuHei'
          ),
        ),
      ): null,
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomNavigationBar(
          fixedColor: const Color(0xff5b67ca),
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          backgroundColor: Colors.white,
          unselectedItemColor: const Color(0xffc6cedd),
          enableFeedback: true,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    _currentIndex = 0;
                  });
                }, 
                icon: const Icon(MyIcons.home, size: 28,), 
                ), 
              label: '首页', 
            ), 
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    // TODO: 这里不对, 应该用路由引入新的页面, 底部导航不再不显示, 但是我不会用路由TAT
                    _currentIndex = 1;
                  });
                },  
                icon: const Icon(Icons.add_box_outlined), 
                ), 
              label: '新建',
            ),  
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    _currentIndex = 2;
                  });
                }, 
                icon: const Icon(Icons.account_circle_outlined), 
                ), 
              label: '设置',
            ),  
          ], 
        ),
      ), 
      // TODO: 浮动按钮, 丑
      // floatingActionButton: Container(
      //   height: (80/375)*screenWidth,
      //   width: (80/812)*screenHeight, 
      //   padding: const EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //     color: Colors.white, 
      //     borderRadius: BorderRadius.circular(100), //TODO: 它弄不圆QAQ
      //   ),
      //   child: FloatingActionButton(
      //     backgroundColor: const Color(0xff5b67ca),
      //     onPressed: (){
      //       setState(() {
      //         _currentIndex = 1;
      //       });
      //     },
      //     child: const Icon(Icons.add_outlined, color: Color(0xffc6cedd),), 
      //   ), 
      // ), 
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_currentIndex],
    );
  }
}
