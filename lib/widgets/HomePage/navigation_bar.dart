import 'package:flutter/material.dart';
import '../../pages/home_page.dart';
import '../../pages/user_page.dart';

// import '/my_icons.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _currentPageIndex = 0;
  final List _pageList = [
    // Homepage
    // TODO: 后端传入参数
      const HomePage(
        info: '出行时间 - 2024/3/2\n距今还有 11 天\n目的地 - 广东/深圳\n天气： 获取中···',
      ),
      null, 
      // UserPage
      const User(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 50, //按钮高度
        elevation: 0, //按钮背景色高度
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 500),
        onDestinationSelected: (int index) {
          setState(() {
            if (index == 0 || index == 2) {
              _currentPageIndex = index;
            } else {
              Navigator.pushNamed(context, "add_plan_page");
            }
          });
        },
        indicatorColor: Colors.white, 
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        selectedIndex: _currentPageIndex,
        destinations: const <Widget> [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home, 
              color: Color(0xff5b67ca),
            ),
            icon: Icon(
              Icons.home_outlined, 
              color: Color(0xffc6cedd),
            ),
            label: '首页',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.add_box, 
              color: Color(0xff5b67ca),
            ),
            icon: Icon(
              Icons.add_box_outlined, 
              color: Color(0xffc6cedd),
            ),
            label: '新建',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle, 
              color: Color(0xff5b67ca),),
            icon: Icon(
              Icons.account_circle_outlined, 
              color: Color(0xffc6cedd),
            ),
            label: '设置',
          ),
        ],
      ),
      body: _pageList[_currentPageIndex],
    );
  }
}