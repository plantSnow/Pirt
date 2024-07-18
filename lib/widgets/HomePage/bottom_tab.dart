import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/add_plan_page.dart';
import '/pages/user_page.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
// TODO: 翻页动画不好看(?)
  int _currentIndex=0;
  final List<Widget> _pages=const [
    HomePage(), 
    AddPlan(), 
    User(), 
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(title: const Text('Pirt Trip'),),
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
                icon: const Icon(Icons.home_outlined), 
                ), 
              label: '首页', 
            ), 
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: (){
                  setState(() {
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
                icon: const Icon(Icons.settings_outlined), 
                ), 
              label: '设置',
            ),  
          ], 
        ),
      ), 
      floatingActionButton: Container(
        height: (80/375)*screenWidth,
        width: (80/812)*screenHeight, 
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(100), 
        ),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff5b67ca),
          onPressed: (){
            setState(() {
              _currentIndex = 1;
            });
          },
          child: const Icon(Icons.add_outlined, color: Color(0xffc6cedd),), 
        ), 
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_currentIndex],
    );
  }
}
