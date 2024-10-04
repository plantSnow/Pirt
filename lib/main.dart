import 'package:flutter/material.dart';
import 'pages/PlanPage/add_plan_page.dart';
import 'widgets/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

// TODO: 用 Locale, 自动兼容中文语言包, 否则日历的月份表示是英语的改不了
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pirt Trip',
      debugShowCheckedModeBanner: false, // 删去右上角的 Debug 标志
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white, 
          primary: Colors.white, 
        ), // 主题颜色白色
        useMaterial3: true,
        datePickerTheme: const DatePickerThemeData(
          surfaceTintColor: Colors.transparent, 
          headerBackgroundColor: Colors.white,
          backgroundColor: Colors.white
        )
      ),
      // 导航路径注册
      routes: {
        "/": (context) => const MyNavigation(), //默认主界面
        "add_plan_page": (context) => const AddPlan(),
      },
      // 当没找到路由名称时使用onGenerate的方法
      // onGenerateRoute: (settings) {
      //   if (settings.name == "add_plan_page") {
      //     return ScaleRoute(page: const AddPlan());
      //   }
      //   return null;
      // },
    );
  }
}
// 使用命名路由器无法做动画
// 放缩动画
// class ScaleRoute extends PageRouteBuilder {
//   final Widget page;
//   ScaleRoute({required this.page})
//       : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               page,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               ScaleTransition(
//             scale: Tween<double>(
//               begin: 0.0,
//               end: 1.0,
//             ).animate(
//               CurvedAnimation(
//                 parent: animation,
//                 curve: Curves.fastOutSlowIn,
//               ),
//             ),
//             child: child,
//           ),
//         );
// }
