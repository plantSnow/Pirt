/*
 * @Author: NingZhonghao 69165342@qq.com
 * @Date: 2024-05-13 17:25:19
 * @LastEditors: NingZhonghao 69165342@qq.com
 * @LastEditTime: 2024-05-13 20:34:58
 * @FilePath: \pirt\lib\pages\home_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'past_trip_page.dart';
import 'recent_trip_page.dart';
import 'user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 当前页面, 默认为首页
  int currentIndex = 0;
  // 定义子页面集
  late List<Widget> pages;
  // 控制器
  late PageController _controller;

  void iniState() {
    super.initState();
    // 初始化子页面集
    pages = const [
      PastTripPage(),
      RecentTripPage(),
      UserPage(), 
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView_Attempt'),
      ),
      body: PageView(
        controller: _controller,
        children: pages,
        onPageChanged:(value) {
          currentIndex = value;
          setState((){});
        },
      ), 
    );
  }
}
