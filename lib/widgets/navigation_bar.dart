import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import '../pages/first_page.dart';
import '../pages/HomePage/home_page.dart';
import '../pages/PlanPage/plan_page.dart';
import '../pages/UserPage/user_page.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int currentPageIndex = 0;
  List<Widget> pages = <Widget>[
    const HomePage(
      info: '出行时间 - 2024/3/2\n距今还有 11 天\n目的地 - 广东/深圳\n天气： 获取中···',
    ),
    const PlanPage(),
    const FistEnterPage(), 
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
          FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
        child: pages[currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        height: 50, //按钮高度
        elevation: 0, //按钮背景色高度
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 500),
        onDestinationSelected: (int index) {
          setState(() => currentPageIndex = index);
        },
        indicatorColor: const Color(0xff5b67ca),
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        selectedIndex: currentPageIndex,
        destinations: const <Widget> [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xffc6cedd),
            ),
            label: '首页',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.my_library_books_outlined, 
              color: Colors.white,
            ),
            icon: Icon(
              Icons.my_library_books_outlined, 
              color: Color(0xffc6cedd),
            ),
            label: '计划',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.edit_note_outlined,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.edit_note_outlined,
              color: Color(0xffc6cedd),
            ),
            label: '游记',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.account_circle_outlined, 
              color: Colors.white, 
            ),
            icon: Icon(
              Icons.account_circle_outlined, 
              color: Color(0xffc6cedd),
            ), 
            label: '个人', 
          )
        ],
      ),
    );
  }
}
