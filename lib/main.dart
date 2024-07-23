import 'package:flutter/material.dart';
import 'package:pirt/pages/add_plan_page.dart';
import 'package:pirt/pages/new_plan_page.dart';
import 'package:pirt/widgets/HomePage/bottom_tab.dart';
import 'package:pirt/widgets/UserPage/setting_button.dart';
import 'package:pirt/widgets/HomePage/navigation_bar.dart';
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
      // 导航路径注册
      routes: {
        "/": (context) => const NavigationExample(), //默认主界面
        "add_plan_page": (context) => const AddPlan(),
      },
    );
  }
}
