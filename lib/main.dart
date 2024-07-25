import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'pages/add_plan_page.dart';
import 'widgets/HomePage/navigation_bar.dart';

=======
import 'package:pirt/pages/add_plan_page.dart';
// import 'package:pirt/pages/new_plan_page.dart';
// import 'package:pirt/widgets/HomePage/bottom_tab.dart';
// import 'package:pirt/widgets/UserPage/setting_button.dart';
import 'package:pirt/widgets/HomePage/navigation_bar.dart';
// import 'pages/splash_page.dart';
// import 'pages/add_plan_page.dart';
// import 'package:pirt/widgets/HomePage/bottom_tab.dart';

                                    
>>>>>>> a15d19f6c06c7d218c4546e13eeb7979ecb5bd9c
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
