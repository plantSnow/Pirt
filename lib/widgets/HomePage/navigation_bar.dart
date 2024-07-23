import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/user_page.dart';
import '/pages/new_plan_page.dart';

// import '/my_icons.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 50, //按钮高度
        elevation: 0, //按钮背景色高度
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        // backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 500),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '首页',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add_box),
            icon: Icon(Icons.add_box_outlined),
            label: '新建',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle_outlined),
            label: '设置',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const HomePage(
          info: '出行时间 - 2024/3/2\n距今还有 11 天\n目的地 - 广东/深圳\n天气： 获取中···',
        ),

        /// newplan page
        const NewPlanPage(),

        const User()

        /// setting page
      ][currentPageIndex],
    );
  }
}
