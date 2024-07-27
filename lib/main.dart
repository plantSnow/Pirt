import 'package:flutter/material.dart';
import './pages/add_plan_page.dart';
import './widgets/HomePage/navigation_bar.dart';

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
        "/": (context) => const MyNavigation(), //默认主界面
        "add_plan_page": (context) => const AddPlan(),
      },
    );
  }
}
