import 'package:flutter/material.dart';
import 'package:pirt/pages/add_plan_page.dart';
import 'package:pirt/pages/home_page.dart';
import 'package:pirt/pages/user_page.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _currentIndex = 0;
  final List<Widget> _pages=const [
    HomePage(), 
    AddPlan(), 
    UserPage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _pages[_currentIndex], 
        Positioned(
          child: Container(
            width: (375),
            height: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
            ),
            child: Row(
              children: [
                // 主页底部导航
                IconButton(
                  onPressed: (){
                    setState(() {
                      _currentIndex = 0;
                    });
                  }, 
                  icon: const Icon(Icons.home_outlined), 
                  color: _currentIndex==0? const Color(0xff5b67ca): const Color(0xffc6cedd),
                ), 
                // 新建页底部导航
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xff5a66c9),
                    ),
                    child: const Icon(Icons.add), 
                  ), 
                ), 
                // 用户设置底部导航
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: const Icon(Icons.settings), 
                  color: _currentIndex==2? const Color(0xff5b67ca): const Color(0xffc6cedd),
                ), 
              ],
            )
          ), 
        ), 
      ]
    );
  }
}