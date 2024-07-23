import 'package:flutter/material.dart';
import 'package:pirt/widgets/HomePage/bottom_tab.dart';
// import 'pages/splash_page.dart';
// import 'pages/add_plan_page.dart';
// import 'package:pirt/widgets/HomePage/bottom_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pirt Trip',
      debugShowCheckedModeBanner: false, // 删去右上角的 Debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white), // 主题颜色白色
        useMaterial3: true,
      ),
      home: const BottomTabs(), // 首先直接进入底部导航默认的首页 HomePage
    );
  }
}
