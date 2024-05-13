/*
 * @Author: NingZhonghao 69165342@qq.com
 * @Date: 2024-05-13 17:25:08
 * @LastEditors: NingZhonghao 69165342@qq.com
 * @LastEditTime: 2024-05-13 20:34:16
 * @FilePath: \pirt\lib\pages\splash_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/pirt_logo.png'), 
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('This is Splash Page!')
            ), 
            const SizedBox(height: 20), 
            const Text(
              'wenzi', 
              style: TextStyle(
                color: Colors.blue, 
              ),
            )
          ],
        ), 
      );
  }
}